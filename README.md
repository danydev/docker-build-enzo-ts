# ENZO-TS docker build

Build an [**unofficial** docker image](https://hub.docker.com/repository/docker/dorru/enzo-ts) that will run [ENZO-TS](https://www.enzobot.com). Use at your own risk.

## Creating and releasing a new build (for maintainers only)
- Download the [latest Linux build for ENZO-TS](https://www.enzobot.com/download/enzo-tsc_linux_latest), decompress the downloaded file in `files` directory (actually replacing the `enzo-ts` folder with the new one).
- Run the following command (where `x.y.z` should match the downloaded version of ENZO-TS).
```shell script
docker build . -t dorru/enzo-ts:x.y.z
```
- Spin a container using the new build and verify that the bot works properly.
- Push the docker image just built to docker hub with `docker push dorru/enzo-ts:x.y.z`

## Running the container
You just want to spin a container with ENZO-TS? Refer to [example-docker-host-enzo-ts](https://github.com/danydev/example-docker-host-enzo-ts)
