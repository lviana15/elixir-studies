defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Orders.Item
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

  def item_factory do
    %Item{
      description: "Pizza de peperoni",
      category: :pizza,
      unity_price: Decimal.new("35.5"),
      quantity: 1
    }
  end
end
