# frozen_string_literal: true

class RenameTypeOnLanguage < ActiveRecord::Migration[7.1]
  def up
    rename_column(:languages, :type, :language_type)
  end

  def down
    rename_column(:languages, :language_type, :type)
  end
end
