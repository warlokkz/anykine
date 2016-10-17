defmodule Anykine.Schema do
  use Absinthe.Schema
  import_types Anykine.Schema.Types

  query do
    field :hello, :hello do
      resolve &Anykine.HelloWorldResolver.main/2
    end
  end

end
