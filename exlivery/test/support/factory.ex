defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Orders.{Item, Order}
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

  def order_factory do
    %Order{
      user_cpf: "12345678900",
      delivery_address: "Rua Cidade, 167",
      items: [
        build(:item),
        build(:item,
         description: "Temaki de atum",
         category: :japonesa,
         quantity: 2,
         unity_price: Decimal.new("20.50")
        )
      ],
      total_price: Decimal.new("76.50")
    }
  end
end
