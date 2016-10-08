require 'carrierwave/neo4j-data-uri'

# Neo4j Active Node
class User
  include Neo4j::ActiveNode

  property :picture, type: String
  mount_uploader :picture, PictureUploader
end

# Find Existing user or you may create new user
user = User.find 'f854208e-3fc9-4bf7-b9c9-dad46c596ed6'
# Give image name (optional)
image.picture_data_filename = 'somefile.jpg'
# Give image mimetype (optional)
image.picture_data_mimetype = 'image/jpeg'
# Assign image data uri
user.picture_data_uri = 'data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////8AAP///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=='
user.save
