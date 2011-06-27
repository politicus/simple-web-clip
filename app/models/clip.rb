class Clip
  include Mongoid::Document
  include Mongoid::Timestamps
  field :file_uid, :type => String
  field :file_name, :type => String
  field :file_ext, :type => String
  field :file_size, :type => Integer
  image_accessor :file
end
