class CreateRubySymbols < ActiveRecord::Migration[6.1]
  def change
    create_table :ruby_symbols do |t|
      t.string :sign
      t.string :name
      t.string :definition
      t.string :example

      t.timestamps
    end
  end
end
