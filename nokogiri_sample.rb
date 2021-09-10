require 'nokogiri'

html = File.open('pintnews.html', 'r') {|f| f.read}
doc = Nokogiri::HTML.parse(html, nil, 'UEF-8')

nodes = doc.xpath('//h6')
nodes.each { |node| pp node }

