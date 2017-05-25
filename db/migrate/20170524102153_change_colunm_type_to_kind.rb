class ChangeColunmTypeToKind < ActiveRecord::Migration[5.1]
  def change
    rename_column :rooms, :type, :kind
  end
end
