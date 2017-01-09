defmodule Discuss.ArticleTest do
  use Discuss.ModelCase

  alias Discuss.Article

  @valid_attrs %{body: "some content", date: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, number: 42, title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Article.changeset(%Article{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Article.changeset(%Article{}, @invalid_attrs)
    refute changeset.valid?
  end
end
