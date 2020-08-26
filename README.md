# hakoniwa-ev3rt-runtime

[TOPPERS/箱庭 単体ロボット向け](https://toppers.github.io/hakoniwa/prototypes/single-robot/#%E5%B0%8E%E5%85%A5%E6%96%B9%E6%B3%95)プロトタイプモデルの実行環境。


## 使い方

実行バイナリのあるディレクトリをマウントしてコンテナを起動したうえで、 `athrill2` コマンドでその実行バイナリを指定してください。

```sh
docker run -it --rm -v "$(pwd):/work" --workdir=/work mikoto2000/hakoniwa-ev3rt-runtime sh
athrill2 -i -c1 -d device_config.txt -m memory.txt asp
```

