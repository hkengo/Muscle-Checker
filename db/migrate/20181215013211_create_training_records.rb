class CreateTrainingRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :training_records do |t|
      t.string :title
      t.string :video

      t.timestamps
    end
  end
end
