defmodule Secrets do
  def secret_add(secret) do
    # Please implement the secret_add/1 function
    anonymous_function = fn x -> x + secret end
  end

  def secret_subtract(secret) do
    anonymous_function = fn x -> x - secret end
  end

  def secret_multiply(secret) do
    anonymous_function = fn x -> x * secret end
  end

  def secret_divide(secret) do
    anonymous_function = fn x -> div(x, secret) end
  end

  def secret_and(secret) do
    anonymous_function = fn x -> Bitwise.band(x, secret) end
  end

  def secret_xor(secret) do
    anonymous_function = fn x -> Bitwise.bxor(x, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    anonymous_function = fn x -> secret_function2.(secret_function1.(x)) end
  end
end
