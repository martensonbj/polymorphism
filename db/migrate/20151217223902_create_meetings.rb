class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.text :description
      # t.integer :meetingsable_id
      # t.string :meetingsable_type
      t.belongs_to :meetingsable, polymorphic: true, index: true

      t.timestamps null: false
    end
    # add_index :meetings, [:meetingsable_id, :meetingsable_type]
  end
end
