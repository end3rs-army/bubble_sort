@sequence = [4,3,5,0,1]
@swaps = 0        
@done = false
#no classes, so why instance vars? 
# @done = true    do you really need this?

# Notes / Questions / Challenges
# 1. Can you use a while instead of `loop` and `break`
# 2. Try to simplify your conditional
# 3. Try building a class and sort method using Tests / TDD

def bubble_sort

	while @done == false

		@done = true 

		@sequence.each_with_index do |x,i|

			previous = @sequence[i]

			current = @sequence[i+1]

			puts @sequence.size

			puts i
			
			#if current == nil

			if current && previous > current

				@sequence[i+1] = previous

				@sequence[i] = current

				@swaps += 1

				@done = false
			end

		end
		#puts "looped through array sequence"
		#break if @done == true
	end
end
bubble_sort

result = @sequence.join(" ")

puts "Final result: #{result}"
puts "Swaps: #{@swaps}"








