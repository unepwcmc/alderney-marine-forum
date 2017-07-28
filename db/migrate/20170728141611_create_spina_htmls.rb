class CreateSpinaHtmls < ActiveRecord::Migration[5.0]
  def change
    create_table :spina_htmls do |t|

      t.text :html, :text

      t.timestamps
    end
  end
end
