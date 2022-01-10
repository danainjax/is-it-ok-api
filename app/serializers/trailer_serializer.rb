class TrailerSerializer < ActiveModel::Serializer
  attributes :id, :tt_id, :title, :video_title, :video_description, :link_embed
end
