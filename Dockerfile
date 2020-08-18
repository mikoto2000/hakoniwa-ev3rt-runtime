# 実行環境のビルド
FROM alpine:3 AS build-env

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="1.0.0"
LABEL description "TOPPERS/箱庭 単体ロボット向けシミュレータ(https://toppers.github.io/hakoniwa/prototypes/single-robot/)の実行環境ビルド"

ARG athrill_build_root="/athrill"

RUN apk add alpine-sdk

RUN mkdir ${athrill_build_root} \
    && cd ${athrill_build_root} \
    && git clone --depth 1 https://github.com/toppers/athrill.git \
    && git clone --depth 1 https://github.com/toppers/athrill-target-v850e2m.git \
    && cd ${athrill_build_root}/athrill-target-v850e2m/build_linux \
    && make timer32=true clean \
    && make timer32=true \
    && cp /athrill/athrill/bin/linux/athrill2 /usr/local/bin/athrill2

FROM alpine:3

LABEL maintainer "mikoto2000 <mikoto2000@gmail.com>"
LABEL version="1.0.0"
LABEL description "TOPPERS/箱庭 単体ロボット向けシミュレータ(https://toppers.github.io/hakoniwa/prototypes/single-robot/)の実行環境"

COPY --from=build-env \
    /usr/local/bin/athrill2 \
    /usr/local/bin/athrill2

