const { ipcMain } = require('electron')

const pathsToRows = require('./pathsToRows')
const prepareData = require('./prepareData')
const groupWords = require('./groupWords')

ipcMain.on('process-subtitles', (event, paths) => {

    pathsToRows(paths)
        .then(rows => prepareData(row))
        .then(words => console.log(words))
        .then(groupedWords => { event.reply('process-subtitles ', groupedWords)

    })
})