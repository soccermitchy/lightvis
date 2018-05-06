workspace "LightVis"
    configurations {"Debug", "Release"}

project "LightVis"
    kind "SharedLib"
    language "C++"
    targetdir "../bin"
    files {"lightvis/src/**.h", "lightvis/src/**.c", "lightvis/src/**.cpp"}
    includedirs {"godot-cpp/include", "godot_headers"}
    libdirs {"lightvis/lib", "godot-cpp/bin"}
    cppdialect "C++14"
    filter "configurations:Debug"
        defines {"DEBUG"}
        symbols "On"
    filter "configurations:Release"
        optimize "On"
    filter "system:Windows"
        links { "godot-cpp.windows.64" }
    filter "system:Linux"
        links { "godot-cpp.linux.64" }

project "libartnet"
    kind "SharedLib"
    language "C++"
    targetdir "lib"
    files {"libartnet/common/artnet/**.cpp", "libartnet/common/artnet/**.h"}
    cppdialect "C++14"
    filter "configurations:Debug"
        defines {"DEBUG"}
        symbols "On"
    filter "configurations:Release"
        optimize "On"
    filter "system:Windows"
        defines {"WIN32"}
        links { "ws2_32", "iphlpapi" }
