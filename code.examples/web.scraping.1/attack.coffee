#!/usr/bin/env casperjs
# coding: utf-8

main = () ->

	casper = require("casper").create(
		{ verbose: true, logLevel: "info" } )

	casper.start "http://192.168.40.153/", ->
		this.echo "現在のページ: [" + this.getTitle() + "]"
		this.fill "form", {
			"user_id": "unknown@example.com",
			"password": "root",
		}
		this.click "#login_button_control"

	casper.then ->
		this.echo "現在のページ: [" + this.getTitle() + "]"
		@capture "HOME.png"

	casper.run()

main()
