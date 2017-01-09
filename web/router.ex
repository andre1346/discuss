defmodule Discuss.Router do
  use Discuss.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Discuss do
    pipe_through :browser # Use the default browser stack

   
    resources "/", TopicController
    resources "articles", ArticleController
  end

  scope "/auth", Discuss do
    pipe_through :browser

    get "/:provider", AuthController, :request
    get "/:provider/callback", AuthController, :callback

  end

#    get "/topics/:id", TopicController, :show

# tu vas avoir une erreur si je laisse la route la parce que ton action show dans le controlle
# est pas encore etabli
# looks pretty good, well done.....

# quand ton action show va etre fais, tu vas pouvoir
# ouvrir :4000/topics/1 mais c etais quoi l erreur juste texte mal placer
# non yavais pas d erreurs, juste faite un peu de menage, mais jai rien change

# faut que tu comprenne que si tu veux acceder a /1 seulement, le /1 dis au
# controilleur, vas cherche le topic avec le ID 1, montre moi le a lecran

# regarde tes routes en haut, INdex, liste moi tous les topics
# New, assez claire, /topics/new etc etc


end
