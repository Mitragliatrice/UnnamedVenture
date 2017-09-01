class AddStatusToEstimates < ActiveRecord::Migration[5.1]
  def change
    add_column :estimates, :status, :integer
  end
end
