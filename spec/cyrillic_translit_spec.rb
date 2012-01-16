# encoding: utf-8
require 'spec_helper'
require 'benchmark'

describe "Cyrillic translit" do

    context 'ua' do
      [
        ["Їжачок", "Yizhachok"],
        ["Новий проїзд", "Novyi proizd"],
        ["Будь-хто", "Budkhto"],
        ["тут/там", "tuttam"],
        ["Привіт", "Pryvit"],
        ["Прывіт", "Prvit"],
      ].each do |original, translited|
        specify do
          CyrillicTranslit.new(original, 'ua', :clean => true).should == translited
        end
      end

      [
        ["Прывіт", "Prvit"]
      ].each do |original, translited|
        specify do
          CyrillicTranslit.new(original, ['ua'], :clean => true).should == translited
        end
      end
    end 

    context 'ua,ru,en'do
      [
        ["ЫІG", "YIG"],
        ["Прывіт", "Pryvit"],
      ].each do |original, translited|
        specify do
          CyrillicTranslit.new(original, ['ua','ru','en'], :clean => false).should == translited
        end
      end
    end

    context 'ua,ru,en'do
      [
        ["ЫІG", "YIG"],
        ["Прывіт", "Pryvit"],
        ['тест', 'test']
      ].each do |original, translited|
        specify do
          CyrillicTranslit.new(original, ['ua','ru', 'en'], :clean => true).should == translited
        end
      end
    end

end
