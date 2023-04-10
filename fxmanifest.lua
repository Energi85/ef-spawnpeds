fx_version "cerulean"

author "Energi"
version '1.0.0'
lua54 'yes'

games {
  "gta5",
  "rdr3"
}

ui_page 'web/build/index.html'

client_scripts {
	'client/*.lua',
  'config.lua',
}

server_scripts {
	'server/*.lua',
  'config.lua'
}

files {
  'web/build/index.html',
  'web/build/**/*'
}