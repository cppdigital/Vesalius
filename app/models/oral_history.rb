# Generated via
#  `rails generate hyrax:work OralHistory`
class OralHistory < ActiveFedora::Base
  include ::Hyrax::WorkBehavior

  self.indexer = OralHistoryIndexer
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your work must have a title.' }

  # This must be included at the end, because it finalizes the metadata
  # schema (by adding accepts_nested_attributes)
  include ::Hyrax::BasicMetadata
  
  property :creator, predicate: ::RDF::URI.new('https://cpprepo.org/creator') do |index|
    index.as :stored_searchable
  end
  
  property :contributor, predicate: ::RDF::URI.new('https://cpprepo.org/contributor') do |index|
    index.as :stored_searchable
  end
  
  property :object_creation_date, predicate: ::RDF::URI.new('https://cpprepo.org/object_creation_date'), multiple: false do |index|
    index.as :stored_searchable
  end
  
    property :file_format, predicate: ::RDF::URI.new('https://cpprepo.org/file_format'), multiple: false do |index|
    index.as :stored_searchable
  end
  
  property :extent, predicate: ::RDF::URI.new('https://cpprepo.org/extent'), multiple: false do |index|
    index.as :stored_searchable
  end
  
  property :language, predicate: ::RDF::URI.new('https://cpprepo.org/language') do |index|
    index.as :stored_searchable
  end
  
  property :provenance, predicate: ::RDF::URI.new('https://cpprepo.org/provenance'), multiple: false do |index|
    index.as :stored_searchable
  end
  
  property :rights_statement, predicate: ::RDF::URI.new('https://cpprepo.org/rights_statement'), multiple: false do |index|
    index.as :stored_searchable
  end
  
  property :license, predicate: ::RDF::URI.new('https://cpprepo.org/license'), multiple: false do |index|
    index.as :stored_searchable
  end
  
  property :abstract, predicate: ::RDF::URI.new('https://cpprepo.org/abstract'), multiple: false do |index|
    index.as :stored_searchable
  end
  
  property :keyword, predicate: ::RDF::URI.new('https://cpprepo.org/keyword') do |index|
    index.as :stored_searchable
  end

end
