class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :skill
      t.integer :gender
      t.references :sub_source, index: true
      t.date :last_interview_date, index: true

      t.timestamps
    end
  end
end
