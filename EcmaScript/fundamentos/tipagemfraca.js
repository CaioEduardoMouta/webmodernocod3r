let qualquer = 'Legal'
console.log(qualquer)
console.log(typeof qualquer)

qualquer = 3.1516
console.log(qualquer)
console.log(typeof qualquer)

//Evitar nome genérico a siglas

//numeros 

const peso1 = 1.0
const peso2 = Number('2.0')

console.log(peso1,peso2)
console.log(Number.isInteger(peso1))
console.log(Number.isInteger(peso2))

const avaliacao1 = 9.871
const avaliacao2 = 6.871

const total = avaliacao1 * peso1 + avaliacao2 * peso2
const media = total / (peso1 + peso2)
console.log(media.toFixed(2))
console.log(media.toString(2)) //em binário

//alguns cuidados
console.log(7/0)
console.log("10"/2)
console.log("Show!" * 2)
console.log(0.1 + 0.7)

//concatena 
console.log('3'+2)
//subtrai 
console.log('3'-2)
