#!/bin/sh

ssh -i "labsuser.pem" ubuntu@ec2-54-87-232-198.compute-1.amazonaws.com 'cd S22-Team04-goodwin.binz.canouse.lasher.narula.wise; git pull; cd Javascript-Code/react-client; npm run build; cd ..; forever start Node-Server/index.js'
