/*valor não inicializado por padrão
é undefined*/
let valor
console.log(valor)

valor1 = null //ausência de valor
console.log(valor1)


const produto = {}
console.log(produto.preco)
console.log(produto)

produto.preco = 3.50
console.log(produto)

produto.preco = undefined
console.log(!!produto.preco)
console.log(produto)

produto.preco = null // sem preço
console.log(!!produto.preco)
console.log(produto)