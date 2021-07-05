const notas = [7,7.4,5,9,2.3,6.7,1]

//Sem callback 
const notasBaixas = []
for(let i in notas) {
    if(notas[i] <7) {
        notasBaixas.push(notas[i])
    }
}

console.log(notasBaixas)

//Com callback
const notasBaixas2 = notas.filter(function(nota) {
    return nota < 7
})

console.log(notasBaixas2)

const notasBaixas3 = notas.filter(nota => nota < 7)
console.log(notasBaixas3)