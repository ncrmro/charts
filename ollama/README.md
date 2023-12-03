


```shell
helm --namespace ollama upgrade --install --create-namespace ollama .
```

curl http://localhost:8080/api/generate -d '{
"model": "llama2",
"prompt": "Why is the sky blue?"
}'

