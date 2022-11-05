# Piece
This will generate a URL for [SFW](https://en.wiktionary.org/wiki/SFW)/[NSFW](https://en.wikipedia.org/wiki/Not_safe_for_work) [Anime](https://en.wikipedia.org/wiki/Anime) PNG.

Source https://github.com/Waifu-pics/waifu-api
## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add piece

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install piece

## Usage

Here is the list of :-

- TYPES :-
    1. `sfw`

    2. `nsfw`

- ENDPOINTS:-
    1. Endpoint *FOR SFW*: `waifu, neko, shinobu, bully, cry, hug, kiss, lick, pat, smug, highfive, nom, bite, slap,wink, poke, dance, cringe,
                blush, happy`


    2. Endpoint *FOR NSFW*: `waifu neko trap blowjob`

```
Initialization
1. piece  = Piece::Client.new

Call the get method with the `type` and `endpoint`.

2. piece.get(`{type}`/`{endpoint}`)
```
Example Usage:

![](https://github.com/amnindersingh12/piece/blob/master/Kapture%202022-11-06%20at%2002.23.51.gif)

Output: 

![](https://waifu.now.sh/sfw/happy)



## Development

After checking out the repo, run `bin/setup` to install dependencies. ~~~Then, run `rake spec` to run the tests~~ You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/amnindersingh12/piece.
