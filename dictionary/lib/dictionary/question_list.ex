defmodule Dictionary.QuestionList do
  
  def start_link do
    Agent.start_link(&question_list/0)
  end

  def question_list do
    "../../assets/quiz.json"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> Poison.Parser.parse!()
  end

  def random_question(agent) do
    Agent.get(agent, &Enum.random/1)
  end

end
