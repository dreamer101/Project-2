# Notes

## Step 1: Create rails app

```bash
rails new -T --database=postgresql mapEd
rake db:drop db:create db:migrate
git init
git add -A
git commit -m "Created rails app"

## Step 2: Add Bootstrap


<h1>Schools</h1>

<% form_tag schools_data_file, :method => 'get' do %>
<p>
  <%= text_field_tag :search, params[:search] %>
  <%= submit_tag "Search" %>
</p>
<% end %>


def self.search(query)
  where("email like ?", "%#{query}%")
  end

end
