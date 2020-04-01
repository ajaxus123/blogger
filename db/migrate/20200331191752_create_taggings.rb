class CreateTaggings < ActiveRecord::Migration[6.0]
  def change
    create_table :taggings do |t|
      t.references :tag, null: false, foreign_key: false
      t.references :article, null: false, foreign_key: false

      t.timestamps
    end
  end
end
