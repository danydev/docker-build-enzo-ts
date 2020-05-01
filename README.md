# ENZO-TS docker build

Build an [**unofficial** docker image](https://hub.docker.com/repository/docker/dorru/enzo-ts) that will run [ENZO-TS](https://www.enzobot.com). Use at your own risk.

## Creating and releasing a new build
- Download Linux build for [ENZO-TS](https://www.enzobot.com), decompress the file and put the folder in `files\enzo_ts`.
- Run the following command (where `x.y.z` should match the downloaded version of ENZO-TS).
```shell script
docker build . -t dorru/enzo-ts:x.y.z
```
- Spin a container using the new build and verify that the bot works properly.
- Push the docker image just built to docker hub with `docker push dorru/enzo-ts:x.y.z`
- Update the `docker-compose.yml` on [docker-host-enzo-ts](https://github.com/danydev/docker-host-enzo-ts) to point to the latest image version you just created.

## Running the container
Refer to [docker-host-enzo-ts](https://github.com/danydev/docker-host-enzo-ts)
