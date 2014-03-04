# charlar.rb

## Usage

Run `send.rb` in one terminal:

    ~/code/charlar.rb (master) $ ruby send.rb Image
    the quick brown fox jumped over the lazy dog
    WROTE inbox/1393939955.965494.png

The message looks like:

<p><img src="the_quick_brown_fox_jumped_over_the_lazy_dog.png" alt="the quick brown fox jumped over the lazy dog" width="800px" /></p>

Run `receive.rb` in another terminal:

    ~/code/charlarb (master) $ ruby receive.rb 
    ==================================================
    READ inbox/1393939955.965494.png
    --------------------------------------------------
    the quick brown fox jumped over the lazy dog

As soon as a message is read, it will go to the `trash/` folder.

## Formats

The two options for `send.rb` are `Image` and `Text`.

## Copyright

Copyright 2014 Bettina Miguez and Seamus Abshere
