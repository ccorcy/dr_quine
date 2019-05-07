function quine() {
    /*
        Inside
    */
    console.log(`${quine}`)
}
/*
    outside
*/
(function main() {quine();console.log('/*\n    outside\n*/');console.log(`(${main})()`)})()
