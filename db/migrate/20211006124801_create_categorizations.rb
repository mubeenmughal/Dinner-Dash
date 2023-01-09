# frozen_string_literal: true

class CreateCategorizations < ActiveRecord::Migration[5.2]
  def change
    create_table :categorizations do |t|
      t.belongs_to :item, foreign_key: true, null: false
      t.belongs_to :category, foreign_key: true, null: false

      t.timestamps
    end
  end
end
