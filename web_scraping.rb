require 'httparty'
require 'nokogiri'
require 'byebug'

URL = "http://www.nasa.gov/press-release/nasa-industry-to-collaborate-on-space-communications-by-2025"

def get_title
	@page.title
rescue Exception => e
	return 
end

def get_article
	@page.children[1].children[1].children[6].attributes["content"].value
rescue Exception => e
	return 
end


def scrap
    unparsed_html = HTTParty.get(URL)
    @page = Nokogiri::HTML(unparsed_html.body)

	data = {
	 			title: get_title,
	 			release_no: '',
	 			date: '',
	 			article: get_article
	 		}
	puts data
end

scrap

