defmodule Rockelivery.Factory do
  use ExMachina

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
end
