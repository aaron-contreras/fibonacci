def fibs(number)
  fib_sequence = []

  1.upto(number) do |fib_number|
    if (1..2).include? fib_number
      fib_sequence << fib_number - 1
    else
      fib_sequence << fib_sequence[-1] + fib_sequence[-2]
    end
  end

  fib_sequence
end

def fibs_rec(number, sequence = [0, 1])
  return sequence[0...number] if number <= 2
  return sequence if sequence.length == number

  sequence << sequence[-1] + sequence[-2]
  fibs_rec(number, sequence)
end
