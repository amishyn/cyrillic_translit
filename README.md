# Cyrillic Translit

Supported Languages: Ukrainian, Russian

## Usage:

    CyrillicTranslit.new('Привіт', 'ua', :clean => true) #=> Pryvit
    CyrillicTranslit.new('Прывіт', ['ua', 'ru'], :clean => true) #=> Pryvit
    CyrillicTranslit.new('Прывіт', 'ua', :clean => true) #=> Prvit

