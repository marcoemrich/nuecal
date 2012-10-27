class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.boolean :allday, default: false
      t.datetime :start
      t.datetime :end
      t.string :url
      t.text :summary
      t.text :description
      t.string :location, :organizer

      t.timestamps
    end
  end
end
