#!/usr/bin/env casperjs
// coding: utf-8
//
// capserjs を利用したスクレイピングの簡単なサンプル
//

function main() {
	var casper = require('casper').create();
	casper.start('http://www.example.com', function() {
	    this.echo(this.getTitle());
	});
	casper.run();
}

main();
