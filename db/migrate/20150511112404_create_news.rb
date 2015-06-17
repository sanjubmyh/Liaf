class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
    	t.string :name
    	t.string :description
    	t.string :link
      t.timestamps
    end
  end
end
