
# array = ["1","2","3","4","5"]
# array2 = ["1","3","5","7","9"]
# array3 = []
# flag = 0
#
# array.each_with_index do |val_a, i|
#     array2.each_with_index do |val_b, x|
#         if array[i] == array2[x] && flag < 2
#             array3.push(val_b)
#             flag = flag + 1
#             puts "test #{val_b}"
#         end
#     end
# end
# puts array3

Given('i have array numbers') do
  print("i have array numbers")
end

When('I pass the first array {string} and the second array {string}') do |array, array2|
  ar = array.split("")
  $x = ar
  ar2 = array2.split("")
  $y = ar2
  print "Array 1 = #{ar} "
  print "Array 2 = #{ar2}"
    #array.split(',').each{|entry| puts entry.strip }
end

When('i create function where it output should be [1, 3]') do
  array1 = $x
  array2 = $y
  array3 = []
  flag = 0

   array1.each_with_index do |val_a, i|
      array2.each_with_index do |val_b, x|
          if array1[i] == array2[x] && flag < 2
              array3.push(val_b)
              flag = flag + 1
            #print "#{val_b.split("")}"
          end
      end
  end
  print array3
end

