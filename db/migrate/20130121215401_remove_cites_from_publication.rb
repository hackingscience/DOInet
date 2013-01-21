class RemoveCitesFromPublication < ActiveRecord::Migration
  def up
    remove_column :publications, :cites
  end

  def down
    add_column :publications, :cites, :string
  end
end
