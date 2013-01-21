class AddTitleToPublication < ActiveRecord::Migration
  def change
    add_column :publications, :title, :string
  end
end
