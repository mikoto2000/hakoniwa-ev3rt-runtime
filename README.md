# hakoniwa-ev3rt-runtime

[TOPPERS/���� �P�̃��{�b�g����](https://toppers.github.io/hakoniwa/prototypes/single-robot/#%E5%B0%8E%E5%85%A5%E6%96%B9%E6%B3%95)�v���g�^�C�v���f���̎��s���B


## �g����

���s�o�C�i���̂���f�B���N�g�����}�E���g���ăR���e�i���N�����������ŁA `athrill2` �R�}���h�ł��̎��s�o�C�i�����w�肵�Ă��������B

```sh
docker run -it --rm -v "$(pwd):/work" --workdir=/work mikoto2000/hakoniwa-ev3rt-runtime sh
athrill2 -i -c1 -d device_config.txt -m memory.txt asp
```

