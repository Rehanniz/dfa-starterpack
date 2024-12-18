fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'

author 'dfa-starterpack'
version '2.3'


shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
}

server_scripts {
    'server/*.lua',
    '@oxmysql/lib/MySQL.lua'
}

client_scripts {
    'client/*.lua',
}

dependencies { 
    'rsg-core',
    'ox_lib'
}

