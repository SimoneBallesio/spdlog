project "spdlog"
	kind "StaticLib"
	language "C++"

	targetdir ("Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("Build/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/**.h",
		"src/**.cpp"
	}

	defines
	{
		"SPDLOG_COMPILED_LIB"
	}

	includedirs
	{
		"include"
	}
  
	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

		defines 
		{ 
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"