defmodule Candysub.Downloader do
  def process(filepath) do
    folder = Path.dirname(filepath)
    file = Path.basename(filepath)
    search(folder, file)
  end

  # Search performs the search for the movie and uses the folder and filename
  # to save the subtitle file in the same folder as the filename.
  def search(folder, file) do
    encoded_file = URI.encode(file)
    detail_link = download("https://subscene.com/subtitles/release?q=#{encoded_file}&l=en")
      |> Candysub.Parser.find_detail_link

    download_link = download(detail_link)
      |> Candysub.Parser.find_download_link

    %HTTPoison.Response{body: body} = HTTPoison.get!(download_link)

    extension = Path.extname(file)

    zip = folder <> "/" <> Path.basename(file, extension) <> ".zip"
    File.write!(zip, body)
    extract_subtitle(zip)

    # Clean up the downloaded zip file.
    File.rm(zip)
  end

  # extract_subtitles extracts the subtitle file to the same directory where
  # the zip is located.
  def extract_subtitle(zip_file_path) do
    charlist_zip_file_path = String.to_char_list(zip_file_path)
    folder = (Path.absname(charlist_zip_file_path) |> Path.dirname) <> "/"
    :zip.unzip(charlist_zip_file_path, cwd: folder)
  end

  defp download(url) do
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        body
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Error: #{url} is 404."
        nil
      {:error, %HTTPoison.Error{reason: _}} ->
        IO.puts "Error: #{url} just ain't workin."
        nil
    end
  end
end
