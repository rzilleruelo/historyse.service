class Base < ActiveRecord::Base

  self.abstract_class = true

  attr_protected :id, :created_at
  
  protected
  
  def id=(id)
    self[:id] = id
  end
  
  def created_at=(created_at)
    self[:created_at] = created_at
  end

end