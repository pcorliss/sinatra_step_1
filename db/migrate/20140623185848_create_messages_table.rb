class CreateMessagesTable < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body
    end
  end
end
