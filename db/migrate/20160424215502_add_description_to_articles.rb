class AddDescriptionToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :description, :text
    add_column :articles, :created_at, :datetime #hora criada
    add_column :articles, :updated_at, :datetime #hora que foi modifacada
  end
end
