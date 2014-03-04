# charlar.rb

## Installation

1. `mkdir ~/code`
2. `git clone https://github.com/seamusabshere/charlar.rb.git ~/code/charlar.rb`
3. `cd ~/code/charlar.rb`
4. `bundle`

If you don't have `bundle`, then run `gem install bundler`.

## Usage

Run `send.rb` in one terminal:

    ~/code/charlar.rb (master) $ ruby send.rb Image
    the quick brown fox jumped over the lazy dog
    WROTE inbox/1393939955.965494.png

Run `receive.rb` in another terminal:

    ~/code/charlarb (master) $ ruby receive.rb 
    ==================================================
    READ inbox/1393939955.965494.png
    --------------------------------------------------
    the quick brown fox jumped over the lazy dog

As soon as a message is read, it will go to the `trash/` folder.

## Formats

The two options for `send.rb` are `Image` and `Text`.

### Text

It just writes the text into a file.

### Image

It uses the ASCII character code (97 for 'a', etc.) in the Red channel of a PNG.

For example, "the quick brown fox jumped over the lazy dog" looks like:

<p><img src="the_quick_brown_fox_jumped_over_the_lazy_dog.png" alt="the quick brown fox jumped over the lazy dog" width="800px" /></p>

## Copyright

Copyright 2014 Bettina Miguez and Seamus Abshere
