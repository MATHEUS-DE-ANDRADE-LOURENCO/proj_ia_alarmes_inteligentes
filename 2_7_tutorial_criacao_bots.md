# 🤖📲 Tutorial: Criando um Bot no Telegram para o Alerta

Este guia mostra como criar um bot no Telegram e conectar ao programa de alerta do projeto.

## 1) Criar o bot no Telegram 🛠️

1. Abra o Telegram e procure por **@BotFather**.
2. Envie o comando `/start`.
3. Envie o comando `/newbot`.
4. Defina o nome do bot (exemplo: **Alerta Inteligentes**).
5. Defina um username unico terminado em `bot` (exemplo: `alerta_inteligente_bot`).
6. Copie o **TOKEN** retornado pelo BotFather (formato parecido com `123456:ABC...`).

> 🔐 Guarde o token com cuidado. Nao publique em repositorio.

## 2) Iniciar conversa com o bot 💬

1. Pesquise o bot pelo username que voce criou.
2. Abra a conversa e clique em **Start**.
3. Envie uma mensagem simples, como `teste`.

## 3) Obter o `chat_id` 🆔

Execute o codigo abaixo para capturar o identificador do chat:

```python
import requests

TOKEN = "SEU_TOKEN_AQUI"
url = f"https://api.telegram.org/bot{TOKEN}/getUpdates"
print(requests.get(url).json())
```

No retorno JSON, procure por:

- `"chat": {"id": ...}`

Esse valor numerico e o seu `chat_id`.

## 4) Testar envio de mensagem ✅

```python
import requests

TOKEN = "SEU_TOKEN_AQUI"
CHAT_ID = "SEU_CHAT_ID_AQUI"
msg = "🚨 Teste de alerta: conexao com Telegram funcionando!"

url = f"https://api.telegram.org/bot{TOKEN}/sendMessage"
params = {"chat_id": CHAT_ID, "text": msg}

r = requests.get(url, params=params)
print(r.json())
```

Se aparecer `"ok": true`, o bot esta pronto para uso. 🎉

## 5) Conectar ao programa de alerta 🔔

1. No codigo do projeto, substitua `TOKEN` e `CHAT_ID` pelos seus valores.
2. No ponto em que o alerta for gerado (por exemplo, deteccao de fraude), envie a mensagem para o Telegram.
3. Exemplo de mensagem de alerta:

- `🚨 Fraude detectada! Verifique imediatamente o painel.`

## 6) Boas praticas de seguranca 🔒

- Nao versionar token em repositorio publico.
- Preferir variaveis de ambiente para armazenar credenciais.
- Se houver vazamento, revogar o token no BotFather e gerar outro.

## 7) Exemplo rapido com variaveis de ambiente (recomendado) 🌿

```python
import os
import requests

TOKEN = os.getenv("TELEGRAM_BOT_TOKEN")
CHAT_ID = os.getenv("TELEGRAM_CHAT_ID")

def enviar_alerta(texto: str) -> dict:
	url = f"https://api.telegram.org/bot{TOKEN}/sendMessage"
	params = {"chat_id": CHAT_ID, "text": texto}
	return requests.get(url, params=params).json()

resp = enviar_alerta("🚨 Alerta automatico do sistema")
print(resp)
```

Pronto. Seu bot esta configurado para receber alertas automaticos do sistema. 🚀
