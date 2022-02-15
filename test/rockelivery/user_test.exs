defmodule Rockelivery.UserTest do
  use Rockelivery.DataCase, async: true

  alias Rockelivery.User
  alias Ecto.Changeset

  describe "changeset/2" do
    test "when all params are valid, returns a valid changeset" do
      params = %{
        age: 27,
        address: "rua test",
        cep: "12345678",
        cpf: "12345678900",
        email: "test@test.com",
        password: "123456",
        name: "nameTest"
      }

      response = User.changeset(params)

      assert %Changeset{changes: %{name: "nameTest"}, valid?: true} = response
    end

    test "when updating a changeset, returns a valid changeset with the given changes" do
      params = %{
        age: 27,
        address: "rua test",
        cep: "12345678",
        cpf: "12345678900",
        email: "test@test.com",
        password: "123456",
        name: "nameTest"
      }

      update_params = %{name: "banana", password: "123456"}

      changeset = User.changeset(params)

      response = User.changeset(changeset, update_params)

      assert %Changeset{changes: %{name: "banana"}, valid?: true} = response
    end

    test "when there are some errors, returns a invalid changeset" do
      params = %{
        age: 1,
        address: "rua test",
        cep: "12345678",
        cpf: "12345678900",
        email: "test@test.com",
        password: "123",
        name: "nameTest"
      }

      response = User.changeset(params)

      expected_response = %{
        age: ["must be greater than or equal to 18"],
        password: ["should be at least 6 character(s)"]
      }

      assert errors_on(response) == expected_response
    end
  end
end
