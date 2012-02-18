Setup.Package
{
 	vendor = "liflg.org",
 	id = "machinarium_demo",
 	description = "Machinarium Demo",
 	version = "1.02-english",
 	splash = "splash.png",
 	superuser = false,
	write_manifest = true,
 	support_uninstall = true,
 	recommended_destinations =
 	{
 		"/usr/local/games",
		"/opt",
		MojoSetup.info.homedir,
 	},

 	Setup.Readme
 	{
 		description = "README",
 		source = "README.liflg"
 	},

	Setup.Option {
		required = true,
		description = "Files for Machinarium",
		bytes = 30709136,
                Setup.DesktopMenuItem
                {
                	disabled = false,
			name = "Machinarium Demo",
                        genericname = "Machinarium Adventure",
                        tooltip = "Play the Machinarium Demo",
                        builtin_icon = false,
                        icon = "machinarium.png",
                        commandline = "%0/Machinarium.sh",
                        category = "Game",
                },
		
		Setup.File {
			source = "base:///Machinarium_demo_en.tar/",
		},

		Setup.File 
		{
			wildcards =  {"Machinarium.sh", "Machinarium" },
			permissions = "0755",
		},

		Setup.File
		{	
			wildcards = { "README.liflg", "machinarium.png" },
		},

--[[		Setup.Option {
			value = true,
			required = true,
			description = "Apply Patch 1.02",
			tooltip = "Latest update",
			bytes = 85689840,
			Setup.File{
				allowoverwrite = true,
				source = "base:///patch_02-DE.tar/",
			},
		},
--]]
	},

	Setup.Option {
		required = true,
		description = "Flashplayer libraries",
		bytes = 17928524,

		Setup.File {
			source = "base:///libs-firefox.tar",
		},
	},
}	
