::Spina::Theme.register do |theme|

  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [{
    name:           'text',
    title:          'Text',
    partable_type:  'Spina::Text'
  },
  {
    # Text box on a grey background row
    name:           'secondary_text',
    title:          'Secondary Text Box',
    partable_type:  'Spina::PhotoCollection'
  }]

  theme.view_templates = [{
    # This is the 'Homepage' template
    name:       'homepage',
    title:      'Homepage',
    page_parts: ['text']
  }, {
    # This is any other page, using the 'Default' template
    name: 'show',
    title:        'Default',
    description:  'A simple page',
    usage:        'Use for your content',
    page_parts:   ['text', 'secondary_text']
  }]

  theme.custom_pages = [{
    name:           'homepage',
    title:          'Homepage',
    deletable:      false,
    view_template:  'homepage'
  }]

end
