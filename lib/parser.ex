defmodule Candysub.Parser do
  def find_download_link(html) do
    download_url = html
      |> Floki.find("a#downloadButton")
      |> Floki.attribute("href")
    "https://subscene.com#{download_url}"
  end

  def find_detail_link(html) do
    detail_url = html
      |> Floki.find("a")
      |> Floki.attribute("href")
      |> Enum.filter(fn(a) -> String.starts_with?(a, "/subtitles/") end)
      |> Enum.at(0)
    "https://subscene.com#{detail_url}"
  end
end
