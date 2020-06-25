# frozen_string_literal: true

def fibs(number)
  fib_sequence = [0, 1]

  3.upto(number) do
    fib_sequence << fib_sequence[-1] + fib_sequence[-2]
  end

  fib_sequence[0...number]
end

def fibs_rec(number)
  return [0, 1][0...number] if number < 3

  fib_sequence = fibs_rec number - 1
  fib_sequence << fib_sequence[-1] + fib_sequence[-2]
end
