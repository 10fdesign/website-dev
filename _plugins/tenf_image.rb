# require 'nokogiri'

# module TenfImage

#   private

#   BOOTSTRAP_FORMAT = /col(-([a-z]{2}))?-([0-9]{1,2})/

#   BOOTSTRAP_MARGIN

#   class BootstrapSize

#     attr_reader :container_width
#     attr_reader :screen_width

#     def initialize(screen_width, container_width)
#       @screen_width = screen_width
#       @container_width = container_width
#     end

#   end

#   BOOTSTRAP_SIZES = {
#     :sm => BootstrapSize.new(576, 540),
#     :md => BootstrapSize.new(768, 720),
#     :lg => BootstrapSize.new(992, 960),
#     :xl => BootstrapSize.new(1200, 1140),
#     :xxl => BootstrapSize.new(1400, 1320)
#   }

#   def self.handle_node(node, depth = 0, size_classes = [])
#     name = node.name
#     srcset = node.attributes.dig("srcset")
#     sizes = node.attributes.dig("sizes")
#     classes = node.attributes.dig("class").to_s.split(" ")
#     matches = classes.map { |c| c.match(BOOTSTRAP_FORMAT) }.reject(&:nil?)
#     # check for bootstrap column classes
#     if matches.any?
#       size_classes << matches
#     end

#     sources = {}
#     if (srcset_split = srcset.to_s.split(","))
#       srcset_split.each do |src|
#         matches = src.match( /\s*(\S*) (\d*)w\s*/)
#         pp matches
#       end
#       matches =
#       puts srcset_split
#     end

#     # do image stuff
#     if name == "img" && srcset
#       puts "image found with srcset"
#       puts "depth = #{depth}"
#       pp size_classes
#       puts node.attributes["src"]
#       puts srcset
#       puts sizes
#       # if node
#       # puts node.methods - Object.new.methods
#       # puts node.attributes.class
#       # puts node.attributes
#       puts "\n\n"
#     end

#     # recurse into children of this node
#     node.children.each do |child|
#       # classes = ""
#       # if !(classes = child.attributes.dig("class")).nil?
#       #   classes = "." + classes.to_s.gsub(" ", ".")
#       # end
#       # id = ""
#       # if !(id = child.attributes.dig("id")).nil?
#       #   id = "#" + id.to_s
#       # end
#       # puts (" " * 2 * depth) + child.name + classes.to_s + id.to_s
#       handle_node(child, depth + 1, size_classes.dup)
#     end
#   end

#   Jekyll::Hooks.register :pages, :post_render do |page|
#     puts "\n"
#     puts "------------------------------------------------------------------------------"
#     pp page
#     nodes = Nokogiri::HTML(page.output)
#     nodes.children.each do |child|
#       TenfImage::handle_node(child)
#     end

#   end
# end