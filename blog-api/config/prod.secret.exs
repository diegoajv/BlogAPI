use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :blog_api, BlogApiWeb.Endpoint,
  secret_key_base: "9cy5kRB8a3Gs7m9xsDgiztp+aoXIYJlC7tTISvAlUhBH7HlYnW2Ulbw7eVrN1Nt6"

# Configure your database
config :blog_api, BlogApi.Repo,
  username: "postgres",
  password: "postgres",
  database: "blog_api_prod",
  pool_size: 15
