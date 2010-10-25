#--
# Copyright (c) 2008 Matson Systems, Inc.
# Released under the BSD license found in the file 
# LICENSE included with this ActivityStreams plug-in.
#++
# routes.rb adds additional routes for ActivityStreamsModule
#
module ActivityStreams #:nodoc:
  module Routing #:nodoc:
    module MapperExtensions
      def activity_streams
          @set.add_named_route('your_activities', '/feeds/your_activities/:activity_stream_token', :controller => 'activity_streams', :action => 'feed', :format => 'atom')
          resources :activity_stream_preferences
          resources :activity_streams
      end
    end
  end
end

ActionController::Routing::RouteSet::Mapper.send :include, ActivityStreams::Routing::MapperExtensions

