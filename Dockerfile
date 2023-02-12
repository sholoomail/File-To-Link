FROM archlinux:latest

RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm python-pip zstd p7zip gcc
RUN pip3 install -U pip
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
RUN pip3 install -U setuptools wheel
RUN pip3 install -U -r requirements.txt
CMD bash -m Adarsh
