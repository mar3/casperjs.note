#!/usr/bin/env casperjs
// coding: utf-8

function main() {

	var casper = require("casper").create();

	casper.start("http://192.168.40.153/");

	casper.then(function() {
		this.echo("現在のページ: [" + this.getTitle() + "]");
		this.fill("form", {"login_form.user": "anonymous@example.com"});
		this.click("#login_button_control");
	});

	casper.then(function() {
		this.echo("現在のページ: [" + this.getTitle() + "]");
	});

	casper.run();
}

main();
