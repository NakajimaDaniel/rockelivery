defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      age: 27,
      address: "rua test",
      cep: "12345678",
      cpf: "12345678900",
      email: "test@test.com",
      password: "123456",
      name: "nameTest"
    }
  end

  def user_factory do
    %User{
      age: 27,
      address: "rua test",
      cep: "12345678",
      cpf: "12345678900",
      email: "test@test.com",
      password: "123456",
      name: "nameTest",
      id: "2d7bf9e2-0e47-4f1c-8fe3-db502c152162"
    }
  end
end
