class CreateGeotimes < ActiveRecord::Migration
  def change
    create_table :geotimes do |t|
      t.string :lat
      t.string :long
      t.time :earthtools_time

      t.timestamps
    end
  end
end
