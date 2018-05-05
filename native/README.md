# Compiling the native library
1. Compile godot-cpp
    1. Grab a binary for the Godot engine. Linux version will work fine.
    2. `cd godot-cpp`
    3. `scons godotbinpath="path/to/godot_binary" p="linux or windows"`
2. Generate build files for your playform
    * Windows
        1. `premake5 vs2017`
        2. Open the generated solution file in Visual Studio
        3. Press Ctrl+Shift+B to build
    * Linux
        1. `premake5 gmake`
        2. `make`