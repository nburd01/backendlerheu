class AddCompetitionIndextoMatches < ActiveRecord::Migration[7.0]
  def change
    add_reference :matches, :competition
  end
end
