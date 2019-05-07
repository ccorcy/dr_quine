const fs = require('fs')
const define_filename = () => "Grace_kid.js"
const define_quine = () => `const fs = require('fs')\nconst define_filename = ${define_filename}\nconst define_quine = ${define_quine}\nconst define_main = ${define_main}\ndefine_main()`
const define_main = () => {fs.writeFile(define_filename(), define_quine(), () => {})}
define_main()