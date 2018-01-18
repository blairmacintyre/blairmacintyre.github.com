# jekyll-video-embed

# It provides several tags which generates a HTML snippet to embed videos, and
# can easily support others video websites. This plugin was heavily based 
# on [@joelverhagen](https://gist.github.com/joelverhagen/1805814) implementation.

# ## Installation
# Place the file in the `_plugins` directory.

# ## Usage
# To include a video in your jekyll post, just use the string 
#   `{% tag video_id width height %}` and replace by its respective `tag` and `video_id`, 
# the `width` (default value: 640) and `height`(default value: 360) are optional.

# ## Description
# The following table shows the supported websites, their respective tag, 
# and where is located the `video_id` (highlighted) in the URL of each video.

# |    Website  |   Tag   |  Video ID                                                   |
# |-------------|---------|-------------------------------------------------------------|
# | ted.com     | ted     | ted.com/talks/**ken_robinson_says_schools_kill_creativity** |
# | ustream.tv  | ustream | ustream.tv/channel/**6540154**                              |
# | vimeo.com   | vimeo   | vimeo.com/**22439234**                                      |
# | youtube.com | youtube | youtube.com/watch?v=**9bZkp7q19f0**                         |


module Jekyll
  class VideoEmbed < Liquid::Tag

    Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/

    Hosts = {
      "ted"     => ->(id) { "https://embed-ssl.ted.com/talks/#{id}.html" },
      "ustream" => ->(id) { "http://ustream.tv/embed/#{id}" },
      "vimeo"   => ->(id) { "https://player.vimeo.com/video/#{id}" },
      "youtube" => ->(id) { "http://youtube.com/embed/#{id}" },
      "youtubes" => ->(id) { "https://youtube.com/embed/#{id}" }
    }

    def initialize(tag_name, markup, tokens)
      super

      if markup =~ Syntax then
        @host = Hosts[tag_name]
        @id = $1

        if $2.nil? then
            @width = "55%"
            @height = "55%"
        else
            @width = $2.to_i
            @height = $3.to_i
        end
      else
        raise "No video ID provided in the \"#{tag_name}\" tag"
      end
    end

    def render(context)
      "<iframe class='fullwidth' width=\"#{@width}\" height=\"#{@height}\" src=\"#{@host.call(@id)}\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>"
    end
    
    Hosts.each_key { |key| Liquid::Template.register_tag key, self }

  end
end
