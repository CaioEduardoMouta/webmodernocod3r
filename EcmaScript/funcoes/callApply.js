function getPreco(imposto = 0, Moeda = 'R$') {
  return `${Moeda} ${this.preco * (1 - this.desc) * (1 + imposto)}`

}

const produto = {
    nome:'Notebook',
    preco: 4590,
    desc: 0.15,
    getPreco
}

console.log(getPreco())
console.log(produto.getPreco())

const carro = {preco:49990, desc: 0.20}

console.log(getPreco.call(carro))
console.log(getPreco.apply(carro))