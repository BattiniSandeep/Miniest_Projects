import pkg from 'langs'
const lang = pkg;
import { franc } from 'franc'
import pkg1 from 'colors'
const colors = pkg1;

var input = process.argv[2];
var code = franc(input);
console.log(code);
if (code === 'und') {
    console.log("SORRY, COULDN'T GUESS IT!. TRY WITH ANOTHER SAMPLE TEXT....".red)
} else {
    var res = lang.where("3", code);
    console.log(res.name.rainbow);
}
