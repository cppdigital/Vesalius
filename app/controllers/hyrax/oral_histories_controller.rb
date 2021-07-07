# Generated via
#  `rails generate hyrax:work OralHistory`
module Hyrax
  # Generated controller for OralHistory
  class OralHistoriesController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::OralHistory

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::OralHistoryPresenter
  end
end
