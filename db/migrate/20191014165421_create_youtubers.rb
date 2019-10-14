class CreateYoutubers < ActiveRecord::Migration[5.1]
  def change
    create_table :youtubers do |t|
      t.string :name

      t.timestamps
    end
  end
end
