MyModule.Files.create_file("text.txt")
MyModule.Files.read("text.txt")

IO.puts(MyModule.Files.read("does_not_exist.txt"))