# ForgeOS Operations Runbook

**Version:** 1.0  
**Status:** Active  
**Last Updated:** 2026-07-19

---

# Purpose

The Operations Runbook provides the day-to-day operational procedures for managing the Forge Sitesmiths production infrastructure.

Unlike the architecture and standards documentation, this document focuses on **how to perform common operational tasks**.

It should contain repeatable procedures that can be followed without relying on memory.

---

# Server Information

## Production VPS
Primary runtime directories:

```
/opt/repos
```

Git repositories

```
/opt/services
```

Runtime services

---

# Repository

Infrastructure repository:

```
/opt/repos/forge-sitesmiths
```

Update repository:

```bash
cd /opt/repos/forge-sitesmiths

git pull
```

Check repository status:

```bash
git status
```

---

# Docker

## Docker Version

```bash
docker version
```

---

## Docker Compose Version

```bash
docker compose version
```

---

## Running Containers

```bash
docker ps
```

---

## All Containers

```bash
docker ps -a
```

---

## Images

```bash
docker images
```

---

## Networks

```bash
docker network ls
```

---

## Volumes

```bash
docker volume ls
```

---

# Container Operations

## View Logs

```bash
docker logs <container>
```

Example

```bash
docker logs portainer
```

---

## Follow Logs

```bash
docker logs -f <container>
```

---

## Restart Container

```bash
docker restart <container>
```

---

## Stop Container

```bash
docker stop <container>
```

---

## Start Container

```bash
docker start <container>
```

---

## Remove Container

```bash
docker rm <container>
```

---

## Inspect Container

```bash
docker inspect <container>
```

---

# Docker Compose

Deploy stack

```bash
docker compose up -d
```

Stop stack

```bash
docker compose down
```

Restart stack

```bash
docker compose down

docker compose up -d
```

Pull latest images

```bash
docker compose pull
```

View compose logs

```bash
docker compose logs
```

Follow compose logs

```bash
docker compose logs -f
```

---

# Networks

Inspect network

```bash
docker network inspect nb-public
```

List connected containers

```bash
docker network inspect nb-public
```

---

# Nginx Proxy Manager

Runtime directory

```
/opt/services/infrastructure/nginx-proxy-manager
```

Compose

```
/opt/repos/forge-sitesmiths/compose/infrastructure/nginx-proxy-manager
```

Deploy

```bash
cd /opt/repos/forge-sitesmiths/compose/infrastructure/nginx-proxy-manager

docker compose up -d
```

Restart

```bash
docker restart nginx-proxy-manager
```

Logs

```bash
docker logs nginx-proxy-manager
```

---

# Portainer

Runtime directory

```
/opt/services/infrastructure/portainer
```

Compose

```
/opt/repos/forge-sitesmiths/compose/infrastructure/portainer
```

Deploy

```bash
cd /opt/repos/forge-sitesmiths/compose/infrastructure/portainer

docker compose up -d
```

Restart

```bash
docker restart portainer
```

Logs

```bash
docker logs portainer
```

---

# Plausible

Running containers

```bash
docker ps | grep plausible
```

Compose

```
/opt/repos/forge-sitesmiths/compose/monitoring/plausible
```

---

# Twingate

Status

```bash
systemctl status twingate-connector
```

Restart

```bash
sudo systemctl restart twingate-connector
```

Logs

```bash
journalctl -u twingate-connector -f
```

---

# Apache

Status

```bash
systemctl status apache2
```

Restart

```bash
sudo systemctl restart apache2
```

Stop

```bash
sudo systemctl stop apache2
```

Start

```bash
sudo systemctl start apache2
```

---

# Ports

Show listening ports

```bash
ss -tulpn
```

Show port owner

```bash
sudo lsof -i :80

sudo lsof -i :443
```

---

# Certificates

Certificate location

```
/opt/services/shared/certs
```

List certificates

```bash
ls -lah /opt/services/shared/certs
```

---

# Cloudflare

Verify DNS

```bash
nslookup domain.com
```

Check HTTPS

```bash
curl -I https://domain.com
```

---

# Git

Check status

```bash
git status
```

Commit

```bash
git add .

git commit -m "Description"
```

Push

```bash
git push
```

Pull

```bash
git pull
```

---

# System Health

Disk usage

```bash
df -h
```

Memory

```bash
free -h
```

CPU

```bash
top
```

Docker disk usage

```bash
docker system df
```

---

# Cleanup

Unused images

```bash
docker image prune
```

Unused containers

```bash
docker container prune
```

Unused networks

```bash
docker network prune
```

Everything unused

```bash
docker system prune
```

Use with care.

---

# Backup Checklist

Before any production migration:

- Backup application files
- Backup database
- Verify backup exists
- Verify restore procedure
- Record backup location

---

# Deployment Checklist

Before deployment

- Git clean
- Documentation updated
- Rollback prepared
- Runtime directories created

Deploy

- Pull latest repository
- Deploy compose
- Check logs
- Validate networking
- Configure NPM
- Configure Cloudflare
- Test

After deployment

- Update documentation
- Commit changes
- Monitor logs



---

## Standard Deployment Workflow

Development is performed on the local workstation.

Deployment is performed from the VPS.

### Local Machine

```bash
git add .

git commit -m "Description"

git push origin main
```

### VPS

```bash
cd /opt/repos/forge-sitesmiths
git fetch origin
git status

Should say:
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean

Compare commit hashes
git rev-parse HEAD
git rev-parse origin/main

Should be the same hasses.
If you see you are ahead or behind:
git fetch origin
git branch -vv

See exactly what differs:
git log --oneline --graph --decorate --all --max-count=15

Fix and then you can:
git pull

docker compose up -d
```

### Verify Repo and Docker Status

```bash
git status

docker ps
```

The VPS repository should always report:

```
Your branch is up to date with 'origin/main'.
```



---

# Emergency Rollback

General procedure

1. Stop container

```bash
docker compose down
```

2. Restore previous configuration

```bash
git checkout <commit>
```

3. Redeploy

```bash
docker compose up -d
```

4. Restore backup if required

5. Validate

---

# Useful Commands

Find compose files

```bash
find /opt/repos/forge-sitesmiths -name compose.yml
```

Find Docker directories

```bash
find /opt/services -maxdepth 2 -type d
```

Find large files

```bash
du -sh /opt/services/*
```

Show running services

```bash
systemctl --type=service --state=running
```

---

# Future Procedures

The following procedures should be added as the platform evolves:

- Deploy a new application
- Deploy a new WordPress site
- Upgrade Docker Engine
- Upgrade Portainer
- Upgrade Nginx Proxy Manager
- Restore a WordPress site
- Restore a MariaDB database
- Restore PostgreSQL
- Restore ClickHouse
- Cloudflare certificate replacement
- Server recovery after reboot
- Disaster recovery
- Full server rebuild
- Monitoring and alerting
- Backup verification

---

# Operational Philosophy

The runbook should always reflect the current production environment.

If a command or procedure changes:

1. Update the infrastructure.
2. Test the procedure.
3. Update this Runbook.
4. Commit the documentation.

A runbook that is not maintained cannot be relied upon during an incident.
