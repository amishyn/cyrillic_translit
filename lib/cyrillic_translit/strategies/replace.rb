module CyrillicTranslit
  module Strategies
    module Replace
      extend self
      def convert(string, langs, clean)
        str = string.dup
        langs.each do |lang|
          CyrillicTranslit.const_get("#{lang.upcase}_TABLE").each do |o,t|
            str.gsub!(o,t)
          end
        end
        str
      end
    end
  end
end

