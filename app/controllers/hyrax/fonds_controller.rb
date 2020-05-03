# Generated via
#  `rails generate hyrax:work Fond`
module Hyrax
  # Generated controller for Fond
  class FondsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::Fond

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::FondPresenter
  end
end
