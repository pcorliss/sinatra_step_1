class AlterMessages < ActiveRecord::Migration
  def change
    change_table :messages do |t|
      t.column :name, :string
    end
  end
end
