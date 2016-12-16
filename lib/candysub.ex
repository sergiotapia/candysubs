defmodule Candysub do
  def main(args) do
    args |> parse_args |> process
  end

  def process([]) do
    IO.puts "No file or folder path given - exiting."
  end

  def process(args) do
    filepath = args[:path]
    Candysub.Downloader.process(filepath)
  end

  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args,
      switches: [path: :string]
    )
    options
  end
end
