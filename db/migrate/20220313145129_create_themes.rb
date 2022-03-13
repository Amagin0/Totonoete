class CreateThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.text 'movie'
      t.text 'game'
      t.text 'sports'
      t.text 'music'
      t.text 'media'
      t.timestamps
    end
  end
end
