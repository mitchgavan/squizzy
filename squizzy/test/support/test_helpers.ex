defmodule Squizzy.TestHelpers do
  
  alias Squizzy.{
    Accounts,
    Multimedia
  }

  def user_fixture(attrs \\ %{}) do
    username = "user#{System.unique_integer([:positive])}"

    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "Some user",
        username: username,
        credential: %{
          email: attrs[:email] || "#{username}@example.com",
          password: attrs[:password] || "supersecret",
        }
      })
      |> Accounts.register_user()

    user
  end

  def video_fixture(%Accounts.User{} = user, attrs \\ %{}) do
    attrs = Enum.into(attrs, %{
      title: "A Title",
      url: "http://google.com",
      description: "a description"
    })

    {:ok, video} = Multimedia.create_video(user, attrs)

    video
  end
end