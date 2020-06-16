class CreateDraws < ActiveRecord::Migration[6.0]
  def change
    create_table :draws do |t|
      t.column :result_numbers, :string
      t.column :status, :integer
      t.timestamps
    end
  end
end
