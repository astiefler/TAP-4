class GendersController < InheritedResources::Base

  ActiveAdmin.register Gender do
    controller do
      def create


        def permitted_params
          params.permit!
          # params.permit! # allow all parameters
        end
      end
    end
  end
end

