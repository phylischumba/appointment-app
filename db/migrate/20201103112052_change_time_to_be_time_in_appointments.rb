class ChangeTimeToBeTimeInAppointments < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column :appointments, :time, :time
    end
    
    def down
      change_column :appointments, :time, :string
    end
  end
end
