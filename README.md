# Cyrillic Translit

Supported Languages: Ukrainian, Russian

## Usage:
<code>
CyrillicTranslit.new('Привіт', 'ua', :clean => true) #=> Pryvit
CyrillicTranslit.new('Прывіт', ['ua', 'ru'], :clean => true) #=> Pryvit
CyrillicTranslit.new('Прывіт', 'ua', :clean => true) #=> Prvit
</code>

# TODO

Write yml file compatible with i18n and generators
