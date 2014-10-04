classifier.jruby
================

A JRuby version of the Ruby classifier library

## Cloned from the Ruby classifier gem

Original repository: https://github.com/cardmagic/classifier

## Do not use this library if you are using Ruby - this is only for JRuby

The library and gem at https://github.com/cardmagic/classifier can use the gsl and rb-gsl gems
if they are installed. These native gems use the GNU GSL numeric library and are very efficient.

## Do use this if you are writing a JRuby application

I found that, GSL issues aside, that the origianl classifier library code would not work, at least
on my system, with JRuby, so I took the minimum code and hacked on it a bit so it works with JRuby.

## Usage

I did not package this as a Ruby gem. Instead, copy classifier.rb and the classifier directory
into any project. The file examples.rb shows how to use:

- LSI classifier
- LSI summarizer
- Bayes classifier

Mark Watson  http://markwatson.com

2014/10/04

