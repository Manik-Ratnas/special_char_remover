# SpecialCharRemover

[![Gem Version](https://badge.fury.io/rb/special_char_remover.png)](http://badge.fury.io/rb/special_char_remover)

A gem to translate a string with special characters into string without special characters. 

## Installation

Add this line to your application's Gemfile:

    gem 'special_char_remover'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install special_char_remover

## Usage

This gem will handle your problems for dealing with special characters in your string. 

Once installed, you can use the <i>simplify</i> method on your string to remove special character and return a plain string. 

<code>
For Eg., 
	irb(main):009:0> "my strɨng with sṕecial characters".simplify 
	#=> "my string with special characters"
</code>

Thats it ;) 

## Contributing

1. Fork it ( http://github.com/Manik-Ratnas/special_char_remover/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request



:collision: :collision: :collision: