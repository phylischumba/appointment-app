class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialization
      t.string :professional_statement
      t.string :practice_from

      t.timestamps
    end
  end
end
