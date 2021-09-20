
config.load_autoconfig(True)

# DarkMode
c.content.user_stylesheets = ["darkmodeFix.css"]

# Bindings
#config.bind('S,', 'config-cycle content.user_stylesheets darkmode.css "" ' )
config.bind('S,', 'config-cycle colors.webpage.darkmode.enabled;; restart')


# External File Sources
#config.source('gruvbox.py')
