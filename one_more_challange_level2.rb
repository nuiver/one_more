start_array = [ "1", "c", "0", "-1", "5", "b", "100", "37", "a", "20", "18", "12", "0" ]
nonumber_array = start_array.select {|i| i.match /\d/ }
onemore_array = nonumber_array.collect {|i| i + 1 }
puts onemore_array