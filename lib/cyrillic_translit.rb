# encoding: utf-8
$KCODE = 'u' if RUBY_VERSION < "1.9"
require 'active_support/core_ext/string'
require 'active_support/multibyte/chars'

require 'cyrillic_translit/maps/ukrainian'
require 'cyrillic_translit/maps/russian'
require 'cyrillic_translit/maps/english'
require 'cyrillic_translit/strategies/char_by_char'


module CyrillicTranslit
  include Maps::Ukrainian
  include Maps::Russian
  include Maps::English
  SUPPORTED_LANGUAGES = ['ua','ru','en']
  def self.new(str, langs = 'ua', options = {:clean => false})
    @str = str.dup
    clean = options[:clean]
    langs = Array(langs)
    return if str.nil? || str.empty? || (langs - SUPPORTED_LANGUAGES != [])

    strategy.convert(@str, langs, clean )
  end


  class << self
    attr_accessor :strategy
  end
  self.strategy = Strategies::CharByChar


end
