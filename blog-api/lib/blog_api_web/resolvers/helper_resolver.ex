defmodule BlogApiWeb.Resolvers.HelperResolver do
  
  def key(key_name) do
    fn parent, _, _ ->
      {:ok, Map.get(parent, key_name)}
    end
  end
end
