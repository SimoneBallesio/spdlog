project "spdlog"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("build/" .. outputdir .. "/%{prj.name}")

	files
	{
    "include/**.h",
    "src/**.cpp"
  }

  defines
  {
    "SPDLOG_COMPILED_LIB"
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