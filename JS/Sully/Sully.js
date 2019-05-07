const fs = require('fs')
const path = require('path')
const current = path.basename(__filename)
const { exec } = require('child_process')
let i = 5
if (i < 0) return
if (current.indexOf('Sully_') != -1) i--
const execute = () => {exec(`node Sully_${i}.js`)}
const quine = () => {
    fs.writeFile(`Sully_${i}.js`, `const fs = require('fs')\nconst path = require('path')\nconst current = path.basename(__filename)\nconst { exec } = require('child_process')\nlet i = ${i}\nif (i < 0) return\nif (current.indexOf('Sully_') != -1) i--\nconst execute = ${execute}\nconst quine = ${quine}\nquine()`, () => {})
    if (i > 0) execute()
}
quine()