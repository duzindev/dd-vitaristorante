fx_version 'cerulean'
game 'gta5'

author 'DUDU'
description 'Vita Ristorante – sistema completo de restaurante com craft, lojas e estoque.'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    '@prism_uipack/init.lua',
    -- '@qbx_core/modules/lib.lua',
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

files {
    'html/menu.html',
    'html/cardapio.png'
}

ui_page 'html/menu.html'
