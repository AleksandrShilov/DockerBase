# Simple Docker


## Part 1. Готовый докер
1. Взять официальный докер образ с nginx и выкачать его при помощи `docker pull`:
    ![docker pull](../misc/images/screen/docker_pull_nginx.png)

2. Проверить наличие докер образа через `docker images`: \
    ![docker images](../misc/images/screen/docker_image.png)

3. Запустить докер образ через `docker run -d [image_id|repository]`: \
    ![docker run](../misc/images/screen/docker_run_d.png)

4. Проверить, что образ запустился через `docker ps`:
    ![docker ps](../misc/images/screen/docker_ps_a.png)

5. Посмотреть информацию о контейнере через `docker inspect [container_id|container_name]`:
    - Размер контейнера: \
    ![size containers](../misc/images/screen/docker_inspect_size.png)
    
    - Список замапленных портов: \
    ![exposed containers](../misc/images/screen/docker_inspect_exposed.png)

    - IP контейнера: \
    ![ip containers](../misc/images/screen/docker_inspect_ip.png)

6. Остановить докер образ через `docker stop [container_id|container_name]`:
    ![docker stop](../misc/images/screen/docker_stop_nginx.png)

7. Проверить, что образ остановился через `docker ps`:
    ![docker ps check](../misc/images/screen/docker_ps_check_stop.png)

8. Запустить докер с замапленными портами `80` и `443` на локальную машину через команду `run`:
    ![80](../misc/images/screen/docker_run_port.png)

9. Проверить, что в браузере по адресу `localhost:80` доступна стартовая страница `nginx`:
    ![check localhost](../misc/images/screen/docker_run_nginx.png)

10. Перезапустить докер контейнер через `docker restart [container_id|container_name]`:
    ![restart](../misc/images/screen/part1_restart_cont.png)
    ![restart](../misc/images/screen/docker_run_nginx.png)


## Part 2. Операции с контейнером
1. Прочитать конфигурационный файл nginx.conf внутри докер контейнера через команду `exec`:
    ![cat_in_nginx](../misc/images/screen/part2_cat_container.png)

2. Создать на локальной машине файл `nginx.conf`: \
    ![create](../misc/images/screen/part2_create_conf.png)

3. Настроить в нем по пути `/status` отдачу страницы статуса сервера `nginx`:
    ![conf](../misc/images/screen/part2_file_conf.png)

4. Скопировать созданный файл nginx.conf внутрь докер образа через команду `docker cp`:
    ![copy](../misc/images/screen/part2_nginx_cp.png)

5. Перезапустить nginx внутри докер образа через команду `exec`: \
    ![reload](../misc/images/screen/part2_nginx_reload.png)

6. Проверить, что по адресу `localhost:80/status` отдается страничка со статусом сервера `nginx`:
    ![status](../misc/images/screen/part2_status.png)

7. Экспортировать контейнер в файл `container.tar` через команду `export`:
    ![export](../misc/images/screen/part2_export_cont.png)

8. Остановить контейнер: \
    ![stop container](../misc/images/screen/part2_stop_cont.png)

9. Удалить образ через `docker rmi [image_id|repository]`, не удаляя перед этим контейнеры:
    ![delete rmi](../misc/images/screen/part2_delete_images.png)

10. Удалить остановленный контейнер: \
    ![delete2](../misc/images/screen/part2_delete2_cont.png)

11. Импортировать контейнер обратно через команду import: \
    ![import](../misc/images/screen/part2_docker_import.png)

12. Запустить импортированный контейнер: \
    ![run last](../misc/images/screen/part2_docker_run_last.png)

13. Проверить, что по адресу `localhost:80/status` отдается страничка со статусом сервера `nginx`:
    ![job](../misc/images/screen/part2_job_import.png)
