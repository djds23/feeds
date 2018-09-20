require 'yaml2rss'

feed = YAML2RSS::Feed.new(
  YAML2RSS::Input.new('feeds.yml').config
)

File.open('feed.xml', 'w') { |file| file.write(feed.to_s) }