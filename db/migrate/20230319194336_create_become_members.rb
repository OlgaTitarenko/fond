class CreateBecomeMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :become_members do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :state
      t.string :city
      t.boolean :coordinator
      t.boolean :knitt
      t.boolean :meetings
      t.text :other

      t.timestamps
    end
  end
end
