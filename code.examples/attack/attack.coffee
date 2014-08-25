#!/usr/bin/env casperjs
# coding: utf-8
#
# CasperJS を利用したウェブスクレイピングの例(CoffeeScript 版)
#

main = () ->

	casper = require('casper').create()

	casper.start 'http://www.google.com', ->
		@echo @getTitle()

	casper.then ->
		@capture 'www.google.com.png'

	casper.run()

main()

