class CreateDogs < ActiveRecord::Migration
=begin
  def up
    create_table :dogs do |t|
      t.string :name
      t.string :breed
    end
  end

  def down
    drop_table :dogs
  end
=end

  def change
    #The change method is actually a shorter way of writing up and down methods.
    #We can refactor our migration to look like this:
    create_table do |t|
      t.string :name
      t.string :breed
    end
    #While the rollback (down) method is not included, it's implicit in the change method.
    #Rolling back the database would work in exactly the same way as using the down method.
  end

end
