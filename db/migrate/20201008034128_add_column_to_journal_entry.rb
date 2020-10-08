class AddColumnToJournalEntry < ActiveRecord::Migration[6.0]
  def change
    add_column :journal_entries, :content, :string
  end
end
