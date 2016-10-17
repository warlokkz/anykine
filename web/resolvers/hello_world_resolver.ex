defmodule Anykine.HelloWorldResolver do
  def main(_args, _info) do
    { :ok, %{ id: "Hello", world: "World!" } }
  end
end
