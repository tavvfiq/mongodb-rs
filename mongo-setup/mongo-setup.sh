#!/usr/bin/env bash
MONGO_HOST=mongodb
MONGO_PORT=27017

RS_NAME=terjemah

if [ ! -f /data/mongo-init.flag ]; then
    echo "Init replicaset"
    mongod mongodb://$MONGO_HOST:$MONGO_PORT --eval "rs.initiate({_id:"$RS_NAME",members:[{_id:0,host:"$MONGO_HOST:$MONGO_PORT",priority:4}]})"
    touch /data/mongo-init.flag
else
    echo "Replicaset already initialized"
fi