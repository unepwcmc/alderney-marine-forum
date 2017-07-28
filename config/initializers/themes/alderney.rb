::Spina::Theme.register do |theme|

  theme.name = 'alderney'
  theme.title = 'Alderney Marine Forum Theme'

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
    name:           'useful_links',
    title:          'Useful Links',
    partable_type:  'Spina::Text'
  },
  {
    name:           'key_dates',
    title:          'Key Dates',
    partable_type:  'Spina::Text'
  },
  {
    name:           'date',
    title:          'Date',
    partable_type:  'Spina::Line'
  },
  {
    name:           'photo',
    title:          'Photo',
    partable_type:  'Spina::Photo'
  },
  {
    name:           'grey_row_text',
    title:          'Grey Row Text',
    partable_type:  'Spina::Text'
  },
  {
    name:           'html',
    title:          'HTML',
    partable_type:  'Spina::Html'
  }]

  theme.view_templates = [{
    name:       'homepage',
    title:      'Homepage',
    page_parts: ['text', 'key_dates', 'photo', 'html']
  }, {
    name: 'show',
    title:        'Default',
    description:  'A simple page',
    usage:        'Use for your content',
    page_parts:   ['text']
  }, {
    name: 'contact',
    title: 'Contact',
    description: 'A simple contact us form',
    deletable: false,
    page_parts: ['text']
  }, {
    name: 'timeline',
    title:        'Timeline',
    description:  'A complete view of all the events',
    deleteable:   false,
    page_parts:   ['text']
  }, {
    name: 'event',
    title:        'Event',
    description:  'Add an event to the calendar',
    deleteable:   false,
    page_parts:   ['date', 'text']
  }, {
    name: 'about',
    title:        'About',
    description:  'About the Alderney Marine Forum',
    deleteable:   false,
    page_parts:   ['text', 'grey_row_text', 'photo']
  }, {
    name: 'resources',
    title:        'Resources',
    description:  'A place for key documents and meeting minutes',
    usage:        'Simply add a link to the list',
    deleteable:   false,
    page_parts:   ['text', 'key_documents', 'meeting_minutes', 'useful_links', 'photo']
  }, {
    name: 'news',
    title:        'News',
    description:  'A list of all news stories',
    usage:        'Use for a list of all news stories',
    deletable:    false,
    page_parts:   ['text', 'useful_links']
  }, {
    name: 'article',
    title:        'Article',
    description:  'A single news story',
    usage:        'Use for posting a new news item',
    deletable:    false,
    page_parts:   ['text', 'photo']
  }]

  theme.custom_pages = [{
    name:           'homepage',
    title:          'Homepage',
    deletable:      false,
    view_template:  'homepage',
    page_parts:     ['text', 'key_dates', 'photo']
  }]
end
