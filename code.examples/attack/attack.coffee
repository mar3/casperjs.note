#!/usr/bin/env casperjs
# coding: utf-8
#
# casperJS を利用したスクレイピングの例(CoffeeScript 版)
#

casper = require('casper').create()
casper.start 'http://www.example.com', ->
	@echo @getTitle()
casper.then ->
	@capture 'www.example.com.png'
casper.run()
