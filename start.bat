@echo off
mkdir "%localappdata%\Whiskerwood\Saved\mods\FaithfulCopperSlides" 2>nul

copy /Y "C:\dev\whiskerwood-mods\Windows\Whiskerwood\Content\Paks\pakchunk250-Windows.pak" "%localappdata%\Whiskerwood\Saved\mods\FaithfulCopperSlides\FaithfulCopperSlides.pak"

copy /Y "C:\dev\whiskerwood-mods\uplugin_files\FaithfulCopperSlides.uplugin" "%localappdata%\Whiskerwood\Saved\mods\FaithfulCopperSlides\FaithfulCopperSlides.uplugin"

echo Copy completed.
start "" "steam://rungameid/2489330"