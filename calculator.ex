# 1,2,+

defmodule Calculator do
  def get_input do
    input_string =
      IO.gets("Enter numbers and operators in this formart 1,2,+ or type exit to quit : ")
      |> String.trim()

    case input_string do
      "exit" ->
        IO.puts("goodbye")

      _ ->
        identify_operation(input_string)
    end
  end

  def identify_operation(input_string) do
    [num1, num2, operator] = String.split(input_string, ",")

    case operator do
      "+" ->
        add(num1, num2)
        get_input()

      "-" ->
        subtract(num1, num2)
        get_input()

      "*" ->
        multiply(num1, num2)
        get_input()

      "/" ->
        divide(num1, num2)
        get_input()
    end
  end

  def add(num1, num2) do
    IO.puts(String.to_integer(num1) + String.to_integer(num2))
  end

  def subtract(num1, num2) do
    IO.puts(String.to_integer(num1) - String.to_integer(num2))
  end

  def multiply(num1, num2) do
    IO.puts(String.to_integer(num1) * String.to_integer(num2))
  end

  def divide(num1, num2) do
    IO.puts(div(String.to_integer(num1),String.to_integer(num2)))
  end
end
