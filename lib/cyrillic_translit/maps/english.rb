module CyrillicTranslit 
  module Maps
    module English
      EN_TABLE = YAML.load_file(File.expand_path(File.dirname(__FILE__))+'/../../../locales/en.yml')['en']['i18n']['transliterate']['rule'].merge(' ' => ' ')
    end
  end
end


