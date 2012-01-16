module CyrillicTranslit
  module Strategies
    module CharByChar
      extend self
      def convert(string, langs, clean)
        result = ""
        string.mb_chars.each_char do |char| 
          result << convert_char(char, langs, clean)
        end
        result
      end

      def convert_char(char, langs, clean)
        converted_char = nil
        langs.each{|lang| converted_char ||= send(lang, char)}
        converted_char ||= clean ? '' : char
      end

      def ru(s)
        CyrillicTranslit::RU_TABLE[s]
      end

      def ua(s)
        CyrillicTranslit::UA_TABLE[s]
      end

      def en(s)
        CyrillicTranslit::EN_TABLE[s]
      end
    end
  end
end

