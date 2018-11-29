const connection = require('../connection');
const filmData = require('../data/dev/films');


connection.batchInsert('films', filmData)
    .returning('*')
    .then(filmInsertions => {
        return connection.destroy()
    });