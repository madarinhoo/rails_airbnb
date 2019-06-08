class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :star, default: 1
      t.references :room, foreign_key: true
      t.references :reservation, foreign_key: true
      t.bigint :guest_id
      t.bigint :host_id
      t.string :type

      t.timestamps
    end
    add_index :reviews, :guest_id
    add_index :reviews, :host_id
  end
end
