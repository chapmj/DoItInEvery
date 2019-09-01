# Get Circumference from Ruby
# Execute ! ruby %

class Console_input 
	def circumference_calc(radius)
		if(radius.is_a?(Float)) then
			return 2 * radius * Math::PI
		end
	end

	def input_get()
		return gets.chomp
	end

	def output_send(str)
		puts(str)
	end

	def number_inquire_for(str)
		output_send(str)
		input = input_get()
		return Float(input)
	end

	def calc_from_command_line(args)
		for arg in args
			begin
			output_send("%.2f\n" % [circumference_calc(Float(arg))])
			rescue
			output_send("invalid input")
			end
		end
	end
end

calc = Console_input.new

if (ARGV.length > 0) then
	calc.calc_from_command_line(ARGV)
else
	val = calc.number_inquire_for("\nEnter a radius: ")
	if val then
		out_num = calc.circumference_calc(val)
		calc.output_send("Answer: %.2f\n" % [out_num])
	else
		calc.output_send("ERROR, a number was not given.")
	end
end

