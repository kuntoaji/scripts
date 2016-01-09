// Author: Kunto Aji. K
// Website: railsmine.net

var args = require('system').args;
var page = require('webpage').create();
var url = args[1];
var fileName = args[2];

console.log('capturing url: ' + url);
page.open(url, function() {
  page.render(fileName + '.png');
  phantom.exit();
});

