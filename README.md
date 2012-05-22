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

4. Ayrıca formda yer alan linkler

        <a href="#" class="add">add phone</a>
        <a href="#" class="remove" data-confirm="Are you sure?">remove</a>

`jquery.nested-fields.js` ile yakalanıyor,

        addSelector: '.add',
        removeSelector: '.remove',

Ayrıntılı kullanım bilgisi için,

- https://github.com/lailsonbm/awesome_nested_fields/wiki
- https://github.com/julianalucena/multi_level_awesome_nested_fields_demo
