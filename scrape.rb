require 'nokogiri'
require 'net/http'
require 'open-uri'

def get_from(url)
  Net::HTTP.get(URI(url))   
end

def write_file(path,text)
  File.open(path,'w') { |file| file.write(text) }
end


html = File.open('baseball.html','r') { |f| f.read }
doc = Nokogiri::HTML::parse(html,nil,'utf-8')

players_name = []
players_props = []
players = []

doc.xpath('//td/text()').each do |player_props|
  players_props << player_props
end

doc.xpath('//td/a/text()').each do |player_name|
  players_name << player_name
end

i=0
while i < players_name.length do
  players << players_props[i * 11]
  players << players_name[i]
  for num in 1...11 do
    players << players_props[i * 11 + num]
  end
  i+=1
end

require 'json'
File.open('players.json','w') { |f| f.write({players: players}.to_json) }
  
