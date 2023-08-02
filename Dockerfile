# 増補改訂版の ubuntu のバージョンが Ubuntu 20.04 のため、docker image は ubuntu:20.04 を指定
FROM ubuntu:20.04

# apt-get install で interactive な入力を回避するために DEBIAN_FRONTEND を設定
ENV DEBIAN_FRONTEND=noninteractive

# 書籍で必要なパッケージとユーザ設定
## 書籍で記載されている必要なパッケージ
RUN apt-get update && apt-get install -y \
    binutils \
    build-essential \
    golang \
    sysstat \
    python3-matplotlib \
    python3-pil \
    fonts-takao \
    fio \
    qemu-kvm \
    virt-manager \
    libvirt-clients \
    virtinst \
    jq \
    docker.io \
    containerd \
    libvirt-daemon-system

## 書籍で記載されていないが、動作確認に利用するコマンド
RUN apt-get install -y strace \
    psmisc

## 書籍で記載されている必要なユーザ設定
RUN adduser `id -un` libvirt
RUN adduser `id -un` libvirt-qemu
RUN adduser `id -un` kvm

# コンテナ内にサンプルコードを clone
RUN git clone https://github.com/satoru-takeuchi/linux-in-practice-2nd.git

# サンプルコードのディレクトリに移動
WORKDIR /linux-in-practice-2nd
