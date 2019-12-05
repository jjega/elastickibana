var elasticsearch=require('elasticsearch');

const config = {
    "server":"localhotst",
    "port":"9200",
    "username":"root",
    "password":"root"
}

var client = new elasticsearch.Client( {

    hosts: [
        'https://[username]:[password]@[server]:[port]/',
        'https://[username]:[password]@[server]:[port]/'
    ]
});

module.exports = client;