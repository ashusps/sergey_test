require 'pdf/reader'
require 'byebug'

def get_petitioner
	@text.split(')')[0].split("\n").last.delete_suffix(',')
rescue Exception => e
	return 
end

def get_state
	@text&.split(')')[7].split.join(' ').delete_suffix(',')
rescue Exception => e
	return 
end

def get_amount
	@text&.split(')')[9].split("\n").first.split(':').last
rescue Exception => e
	return
end

def get_date
	@text.split('$').last.split(' ').first
rescue Exception => e
	return
end

def scrap
    Dir.glob("#{File.expand_path('../', __FILE__)}/pdfs/*.pdf").each do |filename|
    	reader = PDF::Reader.new(filename)
	 	@text = reader.pages.first&.text
	 	if @text
	 		@data = {
	 			petitioner: get_petitioner,
	 			state: get_state,
	 			amount: get_amount,
	 			date: get_date
	 		}
	 		puts @data
	 	end
    end
end

scrap