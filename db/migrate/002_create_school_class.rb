class CreateSchoolClass < ActiveRecord::Migration

    def change
        create_table :table_name do |t|
          # t.column_type :column_name
          t.string :title
          t.integer :room_number
          t.timestamps
        end
    end

end