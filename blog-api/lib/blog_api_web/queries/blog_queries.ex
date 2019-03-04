defmodule BlogApiWeb.Schemas.Queries.BlogQueries do
    use Absinthe.Schema.Notation
    alias BlogApiWeb.Resolvers.PostResolver
    
    object :post_queries do
        field :posts, list_of(:post) do
            arg :filter, :post_filter 
            resolve &PostResolver.list_posts/3
        end
    end
end
  