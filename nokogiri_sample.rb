require 'nokogiri'

html = File.open('baseball.html','r') { |f| f.read }
doc = Nokogiri::HTML::parse(html,nil.'utf-8')