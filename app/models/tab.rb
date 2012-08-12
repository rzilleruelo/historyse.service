class Tab < Base

  validates_presence_of :user_uuid
  validates_presence_of :tab_id

  def tab_id
    self[:tab_id].unpack('H*')[0] if self[:tab_id]
  end

  protected

  def tab_id=(tab_id)
    self[:tab_id] = Digest::MD5.digest(tab_id.to_s) if tab_id
  end

end