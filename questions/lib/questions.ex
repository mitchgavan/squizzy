defmodule Questions do
  
  def question_list do
    "../assets/questions.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
    |> Enum.reject(fn(v) -> v == "" end) 
  end

  def random_question do
    question_list()
    |> Enum.random()
  end

end
