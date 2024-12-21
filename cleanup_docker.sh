#!/bin/bash

echo "=== Docker Cleanup Script ==="

# Удаление остановленных контейнеров
echo "Удаление остановленных контейнеров..."
docker container prune -f

# Удаление неиспользуемых образов (dangling)
echo "Удаление dangling images..."
docker image prune -f

# Удаление неиспользуемых ресурсов (контейнеров, образов, сетей, томов)
echo "Удаление всех неиспользуемых ресурсов..."
docker system prune -f

# Удаление всех неиспользуемых образов
echo "Удаление всех неиспользуемых образов..."
docker image prune -a -f

# Удаление неиспользуемых томов
echo "Удаление неиспользуемых томов..."
docker volume prune -f

# Удаление неиспользуемых сетей
echo "Удаление неиспользуемых сетей..."
docker network prune -f

# Показ общего использования ресурсов Docker
echo "Общее использование ресурсов Docker:"
docker system df

echo "Очистка завершена!"
