defmodule Exlivery.Users.UserTest do
  use ExUnit.Case
  alias Exlivery.Users.User

  describe "build/5" do
    test "when all parameters are valid, returns the user" do
      response = User.build("Joinville", "Lucas", "lucas@email.com", "12345678900", 20)

      expected_response =
        {:ok,
          %User{
            address: "Joinville",
            name: "Lucas",
            email: "lucas@email.com",
            cpf: "12345678900",
            age: 20
        }}

      assert response == expected_response
    end

    test "when parameters are invalid, returns an error" do
      response = User.build("Joinville", "Junior", "junior@email.com", "12345678900", 16)

      expected_response =
        {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
