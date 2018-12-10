$filename= join-path (Resolve-Path ".\output\") "economy-behavior.zip"
$outputfilename =  join-path (Resolve-Path ".\output\") "economy-behavior.mcpack"
Remove-Item -Path $filename -ErrorAction SilentlyContinue
cd .\behavior
dir -Directory | Compress-Archive   -DestinationPath $filename
dir -File | Compress-Archive  -Update  -DestinationPath $filename
move-item $filename $outputfilename
cd ..

$filename1= join-path (Resolve-Path ".\output\") "economy-resource.zip"
$outputfilename1 =  join-path (Resolve-Path ".\output\") "economy-resource.mcpack"
Remove-Item -Path $filename1 -ErrorAction SilentlyContinue
cd .\resource
dir -Directory | Compress-Archive   -DestinationPath $filename1
dir -File | Compress-Archive  -Update  -DestinationPath $filename1
move-item $filename1 $outputfilename1
cd ..
