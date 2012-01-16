# encoding: utf-8
require 'spec_helper'
require 'benchmark'

require 'cyrillic_translit/strategies/replace'

describe "Cyrillic translit" do
  context 'Benchmark' do
    let(:strategy) { CyrillicTranslit::Strategies::OneByOne }
    subject do
      CyrillicTranslit.strategy = strategy
      s = 'фывГГЪфывфывфывффвйцвжйдцвжйдцуэйцдуэдфыэвдфэывдфыв-z/q]\];='
      b = Benchmark.realtime{
      10000.times{@t= CyrillicTranslit.new(s, 'ru')}}
      puts "10000 times:"
      puts b.to_s 
      puts @t.to_s

    end

    context 'CyrillicTranslit::Strategies::CharByChar' do
      let(:strategy) { CyrillicTranslit::Strategies::CharByChar }
      specify do
        subject
      end
    end

    
    context 'CyrillicTranslit::Strategies::UsingRegexp' do
      let(:strategy) { CyrillicTranslit::Strategies::CharByChar }
      specify do
        subject
      end
    end

    context 'CyrillicTranslit::Strategies::Replace' do
      let(:strategy) { CyrillicTranslit::Strategies::Replace }
      specify do
        subject
      end
    end
    
  end
end


