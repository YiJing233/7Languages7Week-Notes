1 + 1

1 + "one"

("0 is " ..   if(0,   "true", "false")) println
("nil is " .. if(nil, "true", "false")) println
("'' is " ..  if("",  "true", "false")) println
// Io> ("0 is " ..   if(0,   "true", "false")) println
// 0 is true
// ==> 0 is true
// Io> ("nil is " .. if(nil, "true", "false")) println
// nil is false
// ==> nil is false
// Io> ("'' is " ..  if("",  "true", "false")) println
// '' is true
// ==> '' is true

