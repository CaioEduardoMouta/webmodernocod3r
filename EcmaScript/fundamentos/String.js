const escola = "cod3r"
// vai passar a posição da letra

console.log(escola.charAt(4))

/* Quando passar da posição da letra
javaScript não da erro apenas avisa 
que não achou */

console.log(escola.charAt(5))

console.log(escola.charCodeAt(3))
console.log(escola.indexOf('3'))

console.log(escola.substring(1))
/* mostrada o indices por exemplo 
em baixo vai do indice 0 ao 3 */

console.log(escola.substring(0,3))

console.log('Escola '.concat(escola).concat("!"))
console.log('Escola ' + escola + "!")
console.log(escola.replace(3,'e'))

console.log('Ana,Maria,Pedro'.split(','))

