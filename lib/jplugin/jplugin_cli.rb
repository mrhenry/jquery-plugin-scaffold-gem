class Jplugin::Cli < Thor::Group
  include Thor::Actions

  argument :name
  argument :author

  def self.source_root
    File.dirname(__FILE__)
  end

  def create_gitignore_file
    template( 'templates/gitignore.tt', "jquery-#{name}/.gitignore" )
  end

  def create_mit_license_file
    template( 'templates/mit-license.tt', "jquery-#{name}/MIT-LICENSE.txt" )
  end

  def create_readme_file
    template( 'templates/readme.tt', "jquery-#{name}/README.md" )
  end

  def create_plugin_file
    template( 'templates/jquery-name.tt', "jquery-#{name}/jquery-#{name}.js" )
  end

  def create_thorfile
    template( 'templates/thorfile.tt', "jquery-#{name}/Thorfile" )
  end

  def create_jquery_plugin_manifest_file
    template( 'templates/jquery-plugin-manifest.tt', "jquery-#{name}/#{name}.jquery.json" )
  end

  def create_public_folder
    empty_directory( "jquery-#{name}/public" )
  end

  def create_index_html_file
    template( 'templates/index-html.tt', "jquery-#{name}/public/index.html" )
  end

  def init_git
    run( "(cd jquery-#{name}; git init)")
    run( "(cd jquery-#{name}; git add .)")
    run( "(cd jquery-#{name}; git commit -m 'Initial commit')")
  end

end
