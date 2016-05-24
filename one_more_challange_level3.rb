start_array = [ "ab123", "gh00", "ijk8", "lmn12", "cd99ef11" ]
$end_array = []

def changer(arr)
   arr.each do |i|
       # almost solved it!
       #w_of_string = i.match /\D*/
       #n_of_string = i.match /\d+/
       #new_n = n_of_string[0].to_i + 1
       #puts w_of_string[0] + new_n.to_s
       
       n = i.gsub (/\d+/) {|x| x.to_i + 1}
       $end_array << n
   end
end



def changer2(arr)
	arr.each do |i|
		w1, w2 = i.scan /\D+/
		n1, n2 = i.scan /\d+/
		na1 = n1.to_i + 1
		na2 = n2.to_i + 1
		if w2 == nil && n2 == nil
			new_string = w1 + na1.to_s
		else
			new_string = w1 + na1.to_s + w2 + na2.to_s
		end
		@end_array << new_string
	end
	puts $end_array
end

changer(start_array)
changer2(start_array)
