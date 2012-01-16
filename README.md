# Cyrillic Translit

Supported Languages: Ukrainian, Russian

## Usage:

CyrillicTranslit.new('Привіт', 'ua', :clean => true) #=> Pryvit
CyrillicTranslit.new('Прывіт', ['ua', 'ru'], :clean => true) #=> Pryvit
CyrillicTranslit.new('Прывіт', 'ua', :clean => true) #=> Prvit


# TODO

Write yml file compatible with i18n and generators
