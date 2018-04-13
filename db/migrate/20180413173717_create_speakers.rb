class CreateSpeakers < ActiveRecord::Migration[5.2]
  def change
    create_table :speakers do |t|
      t.string :first
      t.string :last
      t.string :email

      t.timestamps
    end
  end
end
