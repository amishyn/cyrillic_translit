# encoding: utf-8
module CyrillicTranslit 
  module Maps
    module Ukrainian
      UA_TABLE = YAML.load_file(File.expand_path(File.dirname(__FILE__))+'/../../../locales/uk.yml')['uk']['i18n']['transliterate']['rule'].merge(' ' => ' ')
    end
  end
end
