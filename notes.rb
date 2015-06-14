puts "reading clippings_export.txt file"
text=IO.read('clippings_export.txt')
open_tag="<blockquote>"
close_tag="</blockquote>"

text_array=text.split("\r\n\r\n\r\n")

puts "create array"


text_array.each_with_index do |el, i| 
	el.strip!
	text_array[i]=open_tag+el+close_tag
end

puts "add tags"


File.open('output.txt', 'w') do |file|
   file.puts text_array.join 
end

puts "write to file"