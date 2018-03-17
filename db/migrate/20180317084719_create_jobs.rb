class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :body
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
