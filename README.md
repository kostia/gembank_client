# GemBank-Client is a command line utility for managing Gems on https://gembank.org


## Installation

With Bundler:

```ruby
gem 'gembank_client' # Gemfile
```

Old-Style:

```bash
$ gem install gembank_client
```



## Usage

### Creating / Updating Gems

```bash
$ gembank release c93a3fcd6720bf27b53801d8d7fbc7fa7747df60 superman-1.2.3.gem
```

* The SHA1 is the Push-Key allowed to write to GemBucket `superman`. See https://gembank.org/how-does-it-work for details.
* The file is the Gem you want to create / update.

### Yanking Gems will follow ASAP.

