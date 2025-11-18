@echo off
mkdir "%localappdata%\Whiskerwood\Saved\mods\FaithfulCopperSlides" 2>nul
mkdir "%localappdata%\Whiskerwood\Saved\mods\WhiskersNewClothes" 2>nul

mkdir "%localappdata%\Whiskerwood\Saved\mods\DumpDataTables" 2>nul
mkdir "%localappdata%\Whiskerwood\Saved\mods\DebugPrinter" 2>nul

copy /Y "C:\dev\whiskerwood-mods\Windows\Whiskerwood\Content\Paks\pakchunk250-Windows.pak" "%localappdata%\Whiskerwood\Saved\mods\FaithfulCopperSlides\FaithfulCopperSlides.pak"
copy /Y "C:\dev\whiskerwood-mods\Windows\Whiskerwood\Content\Paks\pakchunk252-Windows.pak" "%localappdata%\Whiskerwood\Saved\mods\WhiskersNewClothes\WhiskersNewClothes.pak"

copy /Y "C:\dev\whiskerwood-mods\Windows\Whiskerwood\Content\Paks\pakchunk299-Windows.pak" "%localappdata%\Whiskerwood\Saved\mods\DebugPrinter\DebugPrinter.pak"
copy /Y "C:\dev\whiskerwood-mods\Windows\Whiskerwood\Content\Paks\pakchunk16-Windows.pak" "%localappdata%\Whiskerwood\Saved\mods\DumpDataTables\DumpDataTables.pak"

copy /Y "C:\dev\whiskerwood-mods\uplugin_files\FaithfulCopperSlides.uplugin" "%localappdata%\Whiskerwood\Saved\mods\FaithfulCopperSlides\FaithfulCopperSlides.uplugin"
copy /Y "C:\dev\whiskerwood-mods\uplugin_files\WhiskersNewClothes.uplugin" "%localappdata%\Whiskerwood\Saved\mods\WhiskersNewClothes\WhiskersNewClothes.uplugin"

echo Copy completed.
start "" "steam://rungameid/2489330"