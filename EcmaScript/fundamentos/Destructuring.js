// novo recurso do ES2015

const pessoa = {
    nome: 'Ana',
    idade: 5,
    endereco: {
        logradouro:'Rua AVD',
        numero: 1000
    }
}

const {nome , idade} = pessoa
console.log(nome,idade)

const{ nome:n,idade:i } = pessoa
console.log(n ,1)

const{ sobrenome, bemHumorada = true}
console.log(sobrenome,bemHumorada)

const { endereco: {logradouro, numero, cep}} = pessoa
console.log(logradouro, numero , cep)

const [a] = [10]
console.log(a)

const [n1, ,n3, , n5, n6 =0] = [10,7,9,8]
console.log(n1, n3, n5, n6)