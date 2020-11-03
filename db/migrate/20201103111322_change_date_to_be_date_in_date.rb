class ChangeDateToBeDateInDate < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column :appointments, :date, :date
    end
    
    def down
      change_column :appointments, :date, :string
    end
  end
end
