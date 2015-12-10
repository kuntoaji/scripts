// Author: Kunto Aji. K
// Website: railsmine.net

var args = require('system').args;
var page = require('webpage').create();
var domain = args[1];
var url = 'http://' + domain;

console.log('capturing url: ' + url);
page.open(url, function() {
  page.render(domain + '.png');
  phantom.exit();
});

