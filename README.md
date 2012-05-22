# Nasıl?

1. `javascripts/model.js.coffee`

    jQuery ->
        $('body form').nestedFields
            containerSelector: 'tbody'

2. Bu şunu bekler: `body` içerisinde `form` alanında `tbody`. Bunun yeri ise `views/_form.html.erb` dir.

3. Modeller,

  class Person < ActiveRecord::Base
    attr_accessible :name, :phones_attributes
    has_many :phones
    accepts_nested_attributes_for :phones, allow_destroy: true
  end

  class Phone < ActiveRecord::Base
    attr_accessible :place, :number, :person_id
    belongs_to :person
  end
