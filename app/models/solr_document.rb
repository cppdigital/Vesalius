# frozen_string_literal: true
class SolrDocument
  include Blacklight::Solr::Document
  include Blacklight::Gallery::OpenseadragonSolrDocument

  # Adds Hyrax behaviors to the SolrDocument.
  include Hyrax::SolrDocumentBehavior


  # self.unique_key = 'id'

  # Email uses the semantic field mappings below to generate the body of an email.
  SolrDocument.use_extension(Blacklight::Document::Email)

  # SMS uses the semantic field mappings below to generate the body of an SMS email.
  SolrDocument.use_extension(Blacklight::Document::Sms)

  # DublinCore uses the semantic field mappings below to assemble an OAI-compliant Dublin Core document
  # Semantic mappings of solr stored fields. Fields may be multi or
  # single valued. See Blacklight::Document::SemanticFields#field_semantics
  # and Blacklight::Document::SemanticFields#to_semantic_values
  # Recommendation: Use field names from Dublin Core
  use_extension(Blacklight::Document::DublinCore)

  # Do content negotiation for AF models. 

  use_extension( Hydra::ContentNegotiation )

  def object_creation_date
    self[Solrizer.solr_name('object_creation_date')]
  end
  
  def creator
    self[Solrizer.solr_name('creator')]
  end
  
  def contributor
    self[Solrizer.solr_name('contributor')]
  end
  
  def extent
    self[Solrizer.solr_name('extent')]
  end
  
  def language
    self[Solrizer.solr_name('language')]
  end
  
  def rights_statement
    self[Solrizer.solr_name('rights_statement')]
  end
  
  def abstract
    self[Solrizer.solr_name('abstract')]
  end

  def source
    self[Solrizer.solr_name('source')]
  end

  def keyword
    self[Solrizer.solr_name('keyword')]
  end

  def file_format
    self[Solrizer.solr_name('file_format')]
  end
  
  def provenance
    self[Solrizer.solr_name('provenance')]
  end
  
  def license
    self[Solrizer.solr_name('license')]
  end
  
end
