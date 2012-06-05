# Migrations will run automatically. The DSL like wrapper syntax is courtesy
# of sinatra-sequel

migration "create the posts table" do
  database.create_table :posts do
    primary_key :id
    string      :title
    text  :content
  end
end
