# Quick and dirty script to bulk convert WTV files to mpg containers. Ideally I should put in error handling but I am lazy and this is a one-off.

$files = Get-ChildItem 'c:\Recorded TV\convert\*.wtv'

foreach($file in $files)
{
    $infile = $file.FullName
    $outfile = $file.FullName.Replace(".wtv",".mpg")
    Write-Host $infile + " -> " + $outfile + " Starting..."
    Invoke-Expression "c:\PathTo\ffmpeg.exe -i '$infile' -vcodec copy -acodec copy -f dvd '$outfile'"
    Write-Host $infile + " -> " + $outfile + " Finished!"
    # Uncomment below to have it also delete originals after conversion.
    #Remove-Item $file
}
