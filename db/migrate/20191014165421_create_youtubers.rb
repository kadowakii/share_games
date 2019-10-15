class CreateYoutubers < ActiveRecord::Migration[5.1]
  def change
    create_table :youtubers do |t|
      t.string :title
      t.string :channel_id
      t.text :description
      t.string :thumbnail_url
      t.timestamps
    end
  end
end
