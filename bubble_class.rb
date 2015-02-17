class BubbleSort

	attr_reader :sequence, :swaps

	def initialize(sequence)	
		@sequence = sequence
		@swaps = 0  
		@done = false 
	end     

	def bubble_sort

		puts "PREVIOUS  CURRENT     ORDER"
		
		while @done == false

			@done = true 

			analyze #analyze method


		end
	end

	def analyze

		@sequence.each_with_index do |x,i|

				show_swaps(i)

				previous = @sequence[i]

				current = @sequence[i+1]

				if current && (previous > current) 

					@sequence[i+1] = previous

					@sequence[i] = current

					@swaps += 1

					@done = false
				end

			end
	end

	def show_swaps(i)

		puts "\t#{@sequence[i]}\t\t#{@sequence[i+1]}\t\t#{results}"
	end

	def results

		@sequence.join(" ")
	end
end

try = BubbleSort.new([4,3,5,0,1])

try.bubble_sort

puts "\n\nFinal result: #{try.results}"
puts "Swaps: #{try.swaps}\n"








