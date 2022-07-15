project "icon-font"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "Off"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"IconsFontaudio.h",
		"IconsFontAwesome4.h",
		"IconsFontAwesome5.h",
		"IconsFontAwesome5Brands.h",
		"IconsFontAwesome5Pro.h",
		"IconsFontAwesome5ProBrands.h",
		"IconsFontAwesome6.h",
		"IconsFontAwesome6Brands.h",
		"IconsForkAwesome.h",
		"IconsKenney.h",
		"IconsMaterialDesign.h"
	}

	sysincludedirs
	{
	}

	defines 
	{
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"
		symbols "On"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "On"
		symbols "Off"
