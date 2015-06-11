puts "Write string with /n delimeter"
text=gets.chomp
open_tag="<blockquote>"
close_tag="</blockquote>"

text_array=text.split("/n")

puts "no trimming"
puts text_array

text_array.each_with_index do |el, i| 
	el.strip!
	text_array[i]=open_tag+el+close_tag
end

puts "with strimming"
puts text_array