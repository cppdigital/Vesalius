# Generated via
#  `rails generate hyrax:work Record`
module Hyrax
  # Generated controller for Record
  class RecordsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::Record

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::RecordPresenter
  end
end
