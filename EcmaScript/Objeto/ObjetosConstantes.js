//pessoa ->123 -> {...}

const pessoa = { nome:'Joao' }
pessoa.nome = 'Pedro'
console.log(pessoa)

//pesoa <- {...} -> {...}
pessoa = { nome: 'Ana'}

Object.freeze(pessoa)

pessoa.nome = 'Maria'
pessoa.end = 'Rua ABC'
console.log(pessoa.nome)
console.log(pessoa)

const pessoaConstante = Object.freeze({nome='Joao'})
