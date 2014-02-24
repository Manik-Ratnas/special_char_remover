# SpecialCharRemover

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'special_char_remover'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install special_char_remover

## Usage

This gem will handle your problems for dealing with special characters in your string. 

Once installed, you can use the simplify method on your string to remove special character and return a plain string. 


For Eg., 
	irb(main):009:0> "my strɨng with sṕecial characters".simplify 
	=> "my string with special characters"


Thats it ;) 

## Contributing

1. Fork it ( http://github.com/<my-github-username>/special_char_remover/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request