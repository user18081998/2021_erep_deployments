curl --location --request POST 'http://localhost:8983/solr/pages/schema' --header 'Content-Type: application/json' --data-raw '{
    "add-field-type" : {
      "name" : "date",
      "class" : "solr.DatePointField"
    },
    "add-field": {
        "name": "parent",
        "type": "text_general",
        "multiValued": false,
        "stored": true
    },
    "add-field": {
        "name": "probeId",
        "type": "text_general",
        "multiValued": false,
        "stored": true
    },
    "add-field": {
        "name": "crawlingDate",
        "type": "date",
        "multiValued": false,
        "stored": true,
        "docValues": true
    },
    "add-field": {
        "name": "url",
        "type": "text_general",
        "multiValued": false,
        "stored": true
    },
    "add-field": {
        "name": "title",
        "type": "text_general",
        "multiValued": false,
        "stored": true
    },
    "add-field": {
        "name": "content",
        "type": "text_general",
        "multiValued": false,
        "stored": true
    },
}'