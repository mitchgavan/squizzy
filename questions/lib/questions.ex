defmodule Questions do
  
  def question_list do
    "../assets/questions.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
    |> Enum.reject(fn(v) -> v == "" end) 
  end

end
