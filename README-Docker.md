# Docker

##### extrnal database
```bash
sudo docker run -d \
--name=codinggarden-trello-clone \
-p 3030:3030 \
-p 8080:8080 \
-e TZ=America/New_York \
-e NODE_ENV=development \
-e MONGO_DB_URI=mongodb://localhost:27017/trello-clone \
-e AUTH_SECRET=my_long_random_string \
--restart unless-stopped \
dockerizegit/codinggarden-travel-log
```

##### enable internal database
```bash
sudo docker run -d \
--name=codinggarden-trello-clone \
-p 3030:3030 \
-p 8080:8080 \
-p 27017:27017 \
-v /var/lib/docker/storage/mongodb/trello-clone:/data/db \
-e TZ=America/New_York \
-e NODE_ENV=development \
-e MONGO_DB_URI=mongodb://localhost:27017/trello-clone \
-e MONGDB=localhost \
-e AUTH_SECRET=my_long_random_string \
--restart unless-stopped \
dockerizegit/codinggarden-trello-clone
```
