class CreatePrivateBusinessUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :private_business_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
