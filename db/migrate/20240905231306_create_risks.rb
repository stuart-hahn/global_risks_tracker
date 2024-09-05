class CreateRisks < ActiveRecord::Migration[7.2]
  def change
    create_table :risks do |t|
      t.string :name
      t.text :description
      t.string :severity
      t.text :mitigations

      t.timestamps
    end
  end
end
