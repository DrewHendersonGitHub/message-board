class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.column :content, :string
      t.column :author, :string
    end
  end
end
