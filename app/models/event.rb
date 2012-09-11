class Event < Base

  SOURCES = ['click', 'scroll', 'focus', 'blur']

  validates_presence_of :user_uuid
  validates_presence_of :tab_id
  validates :source, :inclusion => {:in => SOURCES}
  
  def user_uuid
    UUIDTools::UUID.parse_raw(self[:user_uuid]).hexdigest if self[:user_uuid].present?
  end

  def tab_id
    self[:tab_id].unpack('H*')[0] if self[:tab_id].present?
  end

  protected
  
  def user_uuid=(user_uuid)
    self[:user_uuid] = UUIDTools::UUID.parse_hexdigest(user_uuid).raw if user_uuid.present?
  end

  def tab_id=(tab_id)
    self[:tab_id] = Digest::MD5.digest(tab_id.to_s) if tab_id.present?
  end

end
