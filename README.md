# linux-in-practice-2nd-docker

[［試して理解］Linux のしくみ―実験と図解で学ぶ OS、仮想マシン、コンテナの基礎知識【増補改訂版】](https://gihyo.jp/book/2022/978-4-297-13148-7)の docker image を作成する**非公式**のコードです。
Docker で本書の動作環境 Ubuntu 20.04 と必要なパッケージとユーザ設定を行います。

# Usage

環境は Mac OS を想定しています。
1 行目のコマンドで docker image を作成し、2 行目のコマンドでコンテナ内に入ります。

```bash
docker image build -t linux-in-practice-2nd-docker .
docker run --rm -it linux-in-practice-2nd-docker /bin/bash
```

docker image を build するときに、書籍のサンプルコード（[linux-in-practice-2nd](https://github.com/satoru-takeuchi/linux-in-practice-2nd)）を clone しているので、サンプルコードをすぐに動作可能です。

```bash
root@eaf635186974:/linux-in-practice-2nd# ls
01-operating-system-overview  03-process-scheduler  05-process-management-2  08-storage-hierarchy  10-virtualization  LICENSE
02-process-management-1       04-memory-management  07-filesystem            09-block-layer        12-cgroups         README.md
```
