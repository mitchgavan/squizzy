defmodule Dictionary.QuestionList do
  # @ is a module attribute (like a constant)
  # __MODULE__ is full name of current module
  @me __MODULE__
  
  def start_link do
    # second param registers the name on a node, so name can now be used instead of PID
    Agent.start_link(&question_list/0, name: @me)
  end

  def question_list do
    "../../assets/quiz.json"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> Poison.Parser.parse!()
  end

  def random_question() do
    Agent.get(@me, &Enum.random/1)
  end

end
