dateFormat = require('dateformat')

exports.dateFormat = dateFormat

# JSON date helpers
exports.dateToStringJSON = (dt) ->
  dateFormat dt, "yyyy-mm-dd HH:MM:ss"

exports.stringToDateJSON = (str) ->
  p = (i, j) -> parseInt(str.substr(i, j), 10)
  new Date(p(0, 4), p(5, 2) - 1, p(8, 2), p(11, 22), p(14, 2), p(17, 2), 0)