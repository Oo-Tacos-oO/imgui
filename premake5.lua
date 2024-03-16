-- imgui lib --

project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"
	systemversion "latest"

	targetdir (binariesDir .. "/%{prj.name}")
	objdir (binariesIntermediateDir .. "/%{prj.name}")

	files {
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",

        "imgui_stacklayout_internal.h",
        "imgui_stacklayout.h",
        "imgui_stacklayout.cpp",

        --to remove? only used to show demo widgets and tweak style during runtime
        "imgui_demo.cpp",
	}
	removefiles {
		"**.vs*/**"
	}

	includedirs {
		"./"
	}

	defines {
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "speed"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "speed"
        symbols "off"
