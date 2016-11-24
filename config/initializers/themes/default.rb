::Spina::Theme.register do |theme|

  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [{
    name:           'text',
    title:          'Text',
    partable_type:  'Spina::Text'
  },
  {
    name:           'key_documents',
    title:          'Key Documents list',
    partable_type:  'Spina::Text'
  },
  {
    name:           'meeting_minutes',
    title:          'Meeting Minutes list',
    partable_type:  'Spina::Text'
  },
  {
    name:           'grey_row_text',
    title:          'Grey Row Text',
    partable_type:  'Spina::Text'
  }]

  theme.view_templates = [{
    # This is the 'Homepage' template
    name:       'homepage',
    title:      'Homepage',
    page_parts: ['text']



  }, {
    name: 'show',
    title:        'Default',
    description:  'A simple page',
    usage:        'Use for your content',
    page_parts:   ['text']

  # FINISHED PAGES
  }, {
    name: 'about',
    title:        'About',
    description:  'About the Alderney Marine Forum',
    deleteable:   false,
    page_parts:   ['text', 'grey_row_text']
  }, {
    name: 'resources',
    title:        'Resources',
    description:  'A place for key documents and meeting minutes',
    usage:        'Simply add a link to the list',
    deleteable:   false,
    page_parts:   ['text', 'key_documents', 'meeting_minutes']
  }, {
    name: 'news',
    title:        'News',
    description:  'A list of all news stories',
    usage:        'Use for a list of all news stories',
    deletable:    false,
    page_parts:   ['text']
  }, {
    name: 'article',
    title:        'Article',
    description:  'A single news story',
    usage:        'Use for posting a new news item',
    deletable:    false,
    page_parts:   ['text']
  }]
end
