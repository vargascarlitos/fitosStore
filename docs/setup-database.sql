-- Script de configuración de base de datos para FitosStore Marketplace
-- Ejecutar como superusuario postgres

-- Crear usuario para Medusa
CREATE USER medusa_user WITH PASSWORD 'medusa_password_2024';

-- Crear base de datos para desarrollo
CREATE DATABASE fitosstore_dev OWNER medusa_user;

-- Crear base de datos para producción (opcional)
CREATE DATABASE fitosstore_prod OWNER medusa_user;

-- Conceder permisos completos al usuario
GRANT ALL PRIVILEGES ON DATABASE fitosstore_dev TO medusa_user;
GRANT ALL PRIVILEGES ON DATABASE fitosstore_prod TO medusa_user;

-- Conceder permisos de creación de esquemas
ALTER USER medusa_user CREATEDB;

-- Verificar que todo se creó correctamente
\l
\du