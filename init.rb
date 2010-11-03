require 'ujs_sort_helper'

ActionView::Base.send(:include, UjsSortHelper)
ActionController::Base.send(:include, UjsSortHelper)

# install files
['/public/javascripts', '/public/stylesheets', '/public/images'].each{|dir|
  current_path = File.expand_path(File.dirname(__FILE__))
  source = File.join(current_path,dir)
  dest = current_path + '/../../..' + dir
  FileUtils.cp_r(source+'/.', dest)
} unless File.exists?(Rails.root + '/public/javascripts/ujs_sort_helper.js')
