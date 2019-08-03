FROM feixiao/cpp_build:1.1

LABEL maintainer="frank<feixiao2020@sina.com>"


# support golang 
ENV GOLANG_VERSION 1.12.7
ENV GOLANG_DOWNLOAD_URL https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz \
    && tar -C /usr/local -xzf golang.tar.gz \
    && rm golang.tar.gz

# add oh-my-shell
RUN apt install -y zsh git  && sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" && chsh -s /bin/zsh

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH


