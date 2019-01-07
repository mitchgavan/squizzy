defmodule Squizzy.MultimediaTest do
  use Squizzy.DataCase

  alias Squizzy.Multimedia
  alias Squizzy.Multimedia.Category

  describe "categories" do
    test "list_alphabetical_categories/0" do
      for name <- ~w(Drama Action Comedy), do: Multimedia.create_category(name)

      alpha_names = for %Category{name: name} <- Multimedia.list_alphabetical_categories() do
        name
      end

      assert alpha_names == ~w(Action Comedy Drama)
    end
  end
end