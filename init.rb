#--
# Copyright (c) 2008 Matson Systems, Inc.
# Released under the BSD license found in the file 
# LICENSE included with this ActivityStreams plug-in.
#++
# Activity Streams Intitialization
require 'activity_streams'

ActionController::Base.append_view_path(File.join(File.dirname(__FILE__), "views"))

models_path = File.join(directory, 'lib', 'models')
$LOAD_PATH << models_path
Dependencies.load_paths << models_path
