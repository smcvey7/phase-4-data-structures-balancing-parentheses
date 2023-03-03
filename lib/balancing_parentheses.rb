require_relative './stack'

# your code here
def balancing_parentheses(test_string)
  stack = Stack.new

  test_string.chars.each do |char|
    stack.push(char)
  end

  open_and_not_closed = 0
  closed_and_not_opened = 0

  while stack.size > 0
    char = stack.pop
    if char == ")"
      closed_and_not_opened += 1
    elsif closed_and_not_opened > 0 
      closed_and_not_opened -= 1
    else 
      open_and_not_closed += 1
    end
  end
  closed_and_not_opened + open_and_not_closed
end

def test(input, expected_output)
  puts "Input: #{input} Output: #{number_to_balance(input)}  Expected: #{expected_output}"
end