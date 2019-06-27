defmodule ThxData.Schema.Sensor do
  use Ecto.Schema

  schema "sensor" do
    field :name, :string
    field :description, :string
    field :gpio, :integer
  end
end
