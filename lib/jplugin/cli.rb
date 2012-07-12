class Jplugin::Cli < Thor::Group
  include Thor::Actions

  argument :name

  def self.source_root
    File.dirname(__FILE__)
  end

  def create_plugin_file
    template( 'templates/jquery-name.tt', "#{name}.js")
  end

end