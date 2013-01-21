class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :doi
      t.string :cites

      t.timestamps
    end
  end
end
