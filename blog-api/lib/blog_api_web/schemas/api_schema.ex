defmodule BlogApiWeb.Schemas.ApiSchema do
  use Absinthe.Schema

  import_types BlogApiWeb.Types.AdminTypes
  import_types BlogApiWeb.Types.BlogTypes

  import_types BlogApiWeb.Schemas.Queries.BlogQueries
  import_types BlogApiWeb.Schemas.Queries.AdminQueries

  query do
    import_fields :post_queries
    import_fields :user_queries
  end
end
