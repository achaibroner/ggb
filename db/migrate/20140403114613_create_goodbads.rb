class CreateGoodbads < ActiveRecord::Migration
  def change
    create_table :goodbads do |t|
      t.string :goodbad

      t.timestamps
    end
  end
end
