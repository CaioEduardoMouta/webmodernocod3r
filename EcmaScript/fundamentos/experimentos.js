let a = 3

global.b = 123

this.d = false
this.c = 456
this.e = 'teste'

console.log(a)
console.log(global.b)
console.log(this.c)
console.log(module.exports.c)
console.log(module.exports === this)
console.log(module.exports)

//criando uma variavel maluca
abc = 3 //não faça isso
console.log(global.abc)
