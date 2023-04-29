# Block a website url from hosts file >

## Linux commands >
`sudo nano /etc/hosts`
`127.0.0.1:8080 (blocked localhost port) $url`
**CTRL + O** / **CTRL + X** (exit nano)
**restart browser**
**Optional command:** `ipconfig /flushdns`

## Windows commands >
`notepad (run as administrator)`
`C:\Windows\System32\drivers\etc\hosts`
`127.0.0.1:8080 (blocked localhost port) $url`
**CTRL + S** (save & exit notepad)
**restart browser**
**Optional command:** `ipconfig /flushdns` 