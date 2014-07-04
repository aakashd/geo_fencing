class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.references :user, index: true
      t.string :name

      t.timestamps
    end
  end
end
