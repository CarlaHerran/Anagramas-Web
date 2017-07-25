class Word < ActiveRecord::Base
  # Remember to create a migration!
  before_save :canonical_word

  def canonical_word
    self.canonical = canonical_maker
  end

  def canonical_maker
    self.name.downcase.split('').sort.join
  end

end
