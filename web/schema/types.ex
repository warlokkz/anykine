defmodule Anykine.Schema.Types do
  use Absinthe.Schema.Notation

  object :hello do
    field :id, :id
    field :world, :string
  end
end
