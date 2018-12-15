class AddColumnToTrainingRecords < ActiveRecord::Migration[5.2]
  def change
    add_reference :training_records, :user, foreign_key: true
    add_column :training_records, :part, :string
  end
end
