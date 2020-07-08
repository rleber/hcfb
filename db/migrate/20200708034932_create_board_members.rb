class CreateBoardMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :board_members do |t|
      t.string :first
      t.string :middle
      t.string :last
      t.string :email
      t.string :work
      t.string :cell

      t.timestamps
    end
  end
end
