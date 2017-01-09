defmodule Discuss.Article do
  use Discuss.Web, :model

  schema "article" do
    field :title, :string
    field :body, :string
    field :date, Ecto.DateTime
    field :number, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body, :date, :number])
    |> validate_required([:title, :body, :date, :number])
  end
end
