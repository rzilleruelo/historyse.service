class Url < Base

  validates_presence_of :user_uuid
  validates_presence_of :client_created_at
  validates_presence_of :request_type
  validates_presence_of :tab_id
  validates_presence_of :url

  def user_uuid
    UUIDTools::UUID.parse_raw(self[:user_uuid]).hexdigest if self[:user_uuid].present?
  end

  def tab_id
    self[:tab_id].unpack('H*')[0] if self[:tab_id].present?
  end

  protected

  def client_created_at=(client_created_at)
    self[:client_created_at] = DateTime.strptime(client_created_at,'%s') if client_created_at.present?
  end

  def request_type=(request_type)
    self[:request_type] = request_type
  end

  def user_uuid=(user_uuid)
    self[:user_uuid] = UUIDTools::UUID.parse_hexdigest(user_uuid).raw if user_uuid.present?
  end

  def tab_id=(tab_id)
    self[:tab_id] = Digest::MD5.digest(tab_id.to_s) if tab_id.present?
  end

  def url=(url)
    self[:url] = url
  end

  def referer=(referer)
    self[:referer] = referer
  end

end
