class Jplugin::Cli < Thor::Group
  include Thor::Actions

  argument :name
  argument :author

  def self.source_root
    File.dirname(__FILE__)
  end

  def create_gitignore_file
    template( 'templates/gitignore.tt', "#{name}/.gitignore" )
  end

  def create_mit_license_file
    template( 'templates/mit-license.tt', "#{name}/MIT-LICENSE.txt" )
  end

  def create_readme_file
    template( 'templates/readme.tt', "#{name}/README.md" )
  end

  def create_plugin_file
    template( 'templates/jquery-name.tt', "#{name}/#{name}.js" )
  end

  def create_thorfile
    template( 'templates/thorfile.tt', "#{name}/Thorfile" )
  end

  def create_public_folder
    empty_directory( "#{name}/public" )
  end

  def create_index_html_file
    template( 'templates/index-html.tt', "#{name}/public/index.html" )
  end

end