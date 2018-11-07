defmodule Dictionary.Application do
  # Adds Elixirs default application behaviour
  use Application

  # use start instead of start_link so this doesn't take down the entire elixir world when it crashes. This is the root process of the application. The two args are rarely used.
  def start(_type, _args) do
    Dictionary.QuestionList.start_link()
  end
  
end