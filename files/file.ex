defmodule MyModule.Files do
    def read(file) do
        case File.read(file) do
            {:ok, content} -> IO.puts(content)
            {:error, :enoent} -> "File not found."
            {:error, :eacces} -> "No permission to read the file."
            _ -> "Unknown error"
        end
    end

    def create_file(filename) do
        {:ok, file} = File.open(filename, [:write, :utf8])
        IO.puts(file, "Hello, this is your new file as you requested :)")
        File.close(file)
    end
end