# Configuración de Base de Datos - FitosStore Marketplace

## ✅ Configuración Completada

### 🗄️ Bases de Datos Creadas
- **fitosstore_dev** - Base de datos de desarrollo
- **fitosstore_prod** - Base de datos de producción

### 👤 Usuario Configurado
- **Usuario**: `medusa_user`
- **Contraseña**: `medusa_password_2024`
- **Permisos**: Completos en ambas bases de datos + CREATEDB

## 🔗 URLs de Conexión

### Para Desarrollo (.env.local)
```env
DATABASE_URL=postgresql://medusa_user:medusa_password_2024@localhost:5432/fitosstore_dev
```

### Para Producción (.env.production)
```env
DATABASE_URL=postgresql://medusa_user:medusa_password_2024@localhost:5432/fitosstore_prod
```

## 🧪 Verificación de Conexión

Las siguientes conexiones han sido verificadas exitosamente:

```bash
# Test conexión desarrollo
psql -h localhost -p 5432 -U medusa_user -d fitosstore_dev -c "SELECT current_database(), current_user;"

# Test conexión producción  
psql -h localhost -p 5432 -U medusa_user -d fitosstore_prod -c "SELECT current_database(), current_user;"
```

**Resultado esperado:**
```
 current_database | current_user 
------------------+--------------
 fitosstore_dev   | medusa_user
(1 row)
```

## 📝 Comandos Ejecutados

```sql
-- 1. Crear usuario
CREATE USER medusa_user WITH PASSWORD 'medusa_password_2024';

-- 2. Crear bases de datos
CREATE DATABASE fitosstore_dev OWNER medusa_user;
CREATE DATABASE fitosstore_prod OWNER medusa_user;

-- 3. Conceder permisos
GRANT ALL PRIVILEGES ON DATABASE fitosstore_dev TO medusa_user;
GRANT ALL PRIVILEGES ON DATABASE fitosstore_prod TO medusa_user;
ALTER USER medusa_user CREATEDB;
```

## 🚀 Siguiente Paso

La base de datos está lista para la instalación de MedusaJS. Ahora puedes proceder con:

```bash
npx create-medusa-app@latest
```

Durante la instalación, usa la URL de desarrollo:
```
postgresql://medusa_user:medusa_password_2024@localhost:5432/fitosstore_dev
```

---
*Configuración completada el $(date) - PostgreSQL 15.13 (Postgres.app)*