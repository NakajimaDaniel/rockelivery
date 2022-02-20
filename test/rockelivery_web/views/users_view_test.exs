defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)

    response = render(UsersView, "create.json", user: user)

    assert %{
             message: "User created",
             user: %Rockelivery.User{
               address: "rua test",
               age: 27,
               cep: "12345678",
               cpf: "12345678900",
               email: "test@test.com",
               id: "2d7bf9e2-0e47-4f1c-8fe3-db502c152162",
               inserted_at: nil,
               name: "nameTest",
               password: "123456",
               password_hash: nil,
               updated_at: nil
             }
           } == response
  end
end
