require 'rubygems'
require 'nokogiri'
require 'open-uri'



def get_the_email_of_a_townhal_from_its_webpage
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
  mail = page.css('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
  puts mail.text
end
puts get_the_email_of_a_townhal_from_its_webpage

def get_all_the_urls_of_val_doise_townhalls
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
  url = page.css("table.Style20 a.lientxt").each do |line|
    puts line['href']
  end
end
