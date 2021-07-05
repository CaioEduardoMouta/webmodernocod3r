const escola = [{
    nome: 'Turma m1',
    alunos [{
        nome: 'Gustavo',
        nota: 8.1
    }, {
        nome: 'Ana',
        nota: 9.3
    }]
}, {
    nome: 'Turman M2',
    alunos: [{
        nome:'Rebeca',
        nota: 8.9
    }, {
        nome: 'Roberto',
        nota: 7.3
    }]

}]

const getNotaDoAluno = aluno => aluno.nota
const getNotasDaTurma = turma.alunos.map(getNotaDoAluno)

const nota1 = escola.map(getNotasDaTurma)
console.log(notas1)

console.log([].concat([8.1,9.3], [8.9, 7.3]))

Array.prototype.flatMap = function(callback) {
    return Array.prototype.concat.apply([], this.map(callback))
}

const notas2 = escola.flatMap(getNotasDaTurma)
console.log(notas2)