Remove-Item ..\LibVLCSharp.Forms.Platforms.WPF\bin -Force -Recurse
Remove-Item ..\LibVLCSharp.Forms.Platforms.WPF\obj -Force -Recurse

$msbuild =  '"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\MSBuild.exe"'
iex ("& {0} {1}" -f $msbuild, "../LibVLCSharp.Forms.Platforms.WPF/LibVLCSharp.Forms.Platforms.WPF.csproj /t:Restore,Clean,Build /p:Configuration=Release")
..\nuget.exe pack ..\LibVLCSharp.Forms.Platforms.WPF.nuspec