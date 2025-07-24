class AddColumnToPortfolios < ActiveRecord::Migration[8.0]
  def change
    add_column :portfolios, :body, :text
    add_column :portfolios, :main_image, :text
    add_column :portfolios, :thumb_image, :text
  end
end
