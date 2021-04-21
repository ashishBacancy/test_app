class CreateIrons < ActiveRecord::Migration[6.1]
  def change
    create_table :irons do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
