#Adds two numbers
def add(num1,num2)
	return num1+num2
end

#subtracts two numbers
def subtract(num1,num2)
	return num1-num2
end

#adds an array
def sum(array)
	sum = 0
	array.each { |num|
		sum += num
	}
	return sum
end

#mutiplies an array of numbers
def multiply(array)
	product = 1
	array.each{ |num|
		product *=num
	}
	return product
end

#calculates value in base raised to power
def power(base,pow)
	answer = 1
	for x in 0...pow do
		answer *= base
	end
	return answer
end

#computes factorial
def factorial(num)
	answer = 1
	for x in 1..num do
		answer *=x
	end
	return answer
end	