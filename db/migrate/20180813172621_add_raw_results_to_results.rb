class AddRawResultsToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :raw_results, :json
  end
end
