defmodule Discuss.Repo.Migrations.CreateArticle do
  use Ecto.Migration

  def change do
    create table(:article) do
      add :title, :string
      add :body, :text
      add :date, :datetime
      add :number, :integer

      timestamps()
    end

  end
end
