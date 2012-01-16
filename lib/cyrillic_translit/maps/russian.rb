# encoding: utf-8
module CyrillicTranslit 
  module Maps
    module Russian
      RU_TABLE = YAML.load_file(File.expand_path(File.dirname(__FILE__))+'/../../../locales/ru.yml')['ru']['i18n']['transliterate']['rule'].merge(' ' => ' ')
    end
  end
end

