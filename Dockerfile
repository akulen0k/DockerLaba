FROM jupyterhub/jupyterhub

# обновляю систему, качаю pip, дальше скачиваю все для ноутбука и самый простой аунтефикатор
RUN apt update
RUN apt install python3 python3-pip
RUN pip install notebook jupyterhub jupyterlab jupyterhub-dummyauthenticator

#добавляю пользователя
RUN useradd -m -d /home/admin -s /bin/bash admin

# рабочая директория проекта
WORKDIR /app

#копирование файлов без лишнего
COPY Dockerfile jupyterhub_config.py ./

#открываю порт
EXPOSE 8000

# запускаю jupyterhub
ENTRYPOINT ["jupyterhub", "-f", "jupyterhub_config.py"]





