defmodule Questions do
  
  def get_questions do
    "../assets/quiz.json"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> Poison.Parser.parse!()
  end

  def random_question do
    get_questions()
    |> Enum.random()
  end

end
