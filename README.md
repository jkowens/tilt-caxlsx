# tilt-caxlsx

[![Gem Version](https://badge.fury.io/rb/tilt-caxlsx.svg)](https://badge.fury.io/rb/tilt-caxlsx)
[![Tests](https://github.com/jkowens/tilt-caxlsx/actions/workflows/test.yml/badge.svg)](https://github.com/jkowens/tilt-caxlsx/actions/workflows/test.yml)


Adds support for rendering [Caxlsx](https://github.com/caxlsx/caxlsx) templates using [Tilt](https://github.com/rtomayko/tilt).

## Installation

Add this line to your application's Gemfile:

    gem 'tilt-caxlsx'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tilt-caxlsx

## Usage

Create a template with the .xlsx or .axlsx extension. Use `xlsx_package` variable to create your spreadsheet:

```ruby
wb = xlsx_package.workbook
wb.add_worksheet(name: "Users") do |sheet|
 sheet.add_row ["ID", "Email", "Full Name"]
  @users.each do |user|
    sheet.add_row [user.id, user.email, user.full_name]
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request