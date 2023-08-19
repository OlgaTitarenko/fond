class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :state
      t.string :city
      t.string :coordinator
      t.string :knit
      t.string :mettings

      t.timestamps
    end
  end
end
