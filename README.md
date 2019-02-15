# Getting Started

## setup

### yarn, imagemagick

```bash
$ brew install yarn
$ brew install imagemagick
```

### Ruby

see: https://github.com/rbenv/rbenv
```bash
$ brew install rbenv
$ rbenv init
$ source ~/.bash_profile
$ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
$ rbenv install 2.6.0
$ rbenv local 2.6.0
$ ruby -v
ruby 2.6.0p0 (2018-12-25 revision 66547) [x86_64-darwin18]
$ gem install bundler
```

### System dependencies

```bash
$ bundle install
$ yarn install
```

### Database

```bash
$ rails db:migrate RAILS_ENV=development
```

## Run

```bash
$ rails s
```

### Access

http://0.0.0.0:3000
