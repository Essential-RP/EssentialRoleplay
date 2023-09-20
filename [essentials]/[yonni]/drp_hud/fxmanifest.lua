fx_version "cerulean"
lua54 'yes'

games { "gta5", "rdr3" }

ui_page 'web/build/index.html'

shared_scripts { 
  '@qb-core/shared/locale.lua',
  'locales/en.lua',
  'locales/*.lua',
  'shared/shared.lua',
  'config.lua'
}
server_script "server/**/*"
client_script "client/**/*"

files {
  'web/build/index.html',
  'web/build/**/*'
}