# encoding: utf-8
$KCODE = 'u' if RUBY_VERSION < "1.9"
require 'active_support/core_ext/string'
require 'active_support/multibyte/chars'

require 'cyrillic_translit/maps/ukrainian'
require 'cyrillic_translit/maps/russian'
require 'cyrillic_translit/maps/english'
require 'cyrillic_translit/strategies/char_by_char'

I18n.load_path<< File.expand_path(File.dirname(__FILE__)) + "/../locales/ru.yml"
I18n.load_path<< File.expand_path(File.dirname(__FILE__)) + "/../locales/uk.yml"
# Redundant conversion.
# not load
# I18n.load_path<< File.expand_path(File.dirname(__FILE__)) + "/../locales/uk.yml"

module CyrillicTranslit
  include Maps::Ukrainian
  include Maps::Russian
  include Maps::English
  def self.new(str, langs = 'uk', options = {:clean => false})
    @str = str.dup
    clean = options[:clean]
    langs = Array(langs)
    langs.map!{|lang| map_lang(lang)}.compact
    return if str.nil? || str.empty? || langs.empty? 
    strategy.convert(@str, langs, clean )
  end

  def self.map_lang(lang)
    {
      'ua' => 'uk',
      'uk' => 'uk',
      'ru' => 'ru',
      'en' => 'en',
    }[lang]
  end
  class << self
    attr_accessor :strategy
  end
  self.strategy = Strategies::CharByChar


end
