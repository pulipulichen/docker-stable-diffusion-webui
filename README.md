# docker-stable-diffusion-webui
run stable diffusion with docker

# Autostart

````bash
crontab -e
````

Add following setting
````
@reboot ~/docker-stable-diffusion-webui/startup.sh
````


# Reference
- https://github.com/ai-dock/stable-diffusion-webui-forge/tree/main/build