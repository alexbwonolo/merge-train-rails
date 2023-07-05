class AddPostedToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :posted, :boolean, default: false
  end
end
