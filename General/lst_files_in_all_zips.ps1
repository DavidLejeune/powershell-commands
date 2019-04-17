[Reflection.Assembly]::LoadWithPartialName('System.IO.Compression.FileSystem')

foreach($sourceFile in (Get-ChildItem -filter '*.zip'))
{
    [IO.Compression.ZipFile]::OpenRead($sourceFile.FullName).Entries.FullName |
        %{ "$sourcefile`:$_" }
}