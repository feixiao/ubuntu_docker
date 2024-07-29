## 本地私人ChatGPT

### ollama搭建
```shell
curl -fsSL https://ollama.com/install.sh | sh

OLLAMA_HOST=0.0.0.0:11434 ollama serve
```


### open-webui
```shell

# 启动open-webui
docker run -d -p 3000:8080 -e OLLAMA_BASE_URL=0.0.0.0:11434 \
    -v /home/frank/volumes/open-webui:/app/backend/data \
    --name open-webui --restart always ghcr.io/open-webui/open-webui:main
```