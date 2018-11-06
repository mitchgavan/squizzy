defmodule Questions do
  
  def question_list do
    "../assets/questions.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
    |> Enum.reject(fn(v) -> v == "" end) 
  end

  def random_question do
    get_questions()
    |> Enum.random()
  end

  def get_questions do
    "../assets/quiz.json"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> Poison.Parser.parse!()
  end

end
