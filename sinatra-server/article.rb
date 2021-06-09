class Article < Airrecord::Table
  self.base_key = ENV['AIRTBLAE_BASE_KEY']
  self.table_name = ENV['AIRTABLE_TABLE']

  def headline
    self['Headline']
  end

  def sub_headline
    self['Sub-headline']
  end

  def image
    img_obj = self['Header image']
    return nil if !img_obj
    img_obj[0]['url']
  end

  def self.all_active
    all(filter: '{Status} = "Published"', sort: { 'Publish date' => 'desc' })
  end
end