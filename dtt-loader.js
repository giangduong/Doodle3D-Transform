// var bbld = require("babel-loader");
var babel7 = require("@babel/core");

module.exports = function (source, options) {
    var trans = babel7.transformSync(source, {
        presets: ["@babel/preset-env"],
        babelrc: false
    });

    this.callback(null, trans.code, trans.map);

};