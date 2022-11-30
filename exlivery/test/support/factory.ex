defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User

  def user_factory do
    %User{
      name: "Lucas",
      email: "lucas@email.com",
      cpf: "12345678900",
      age: 20,
      address: "Rua Cidade, 167"
    }
  end
end
