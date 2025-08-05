-- Script para configurar Paraguay en FitosStore
-- Este script crea una región para Paraguay con Guaraní como moneda principal

-- 1. Crear región Paraguay
INSERT INTO region (id, name, currency_code, created_at, updated_at) 
VALUES (
  'reg_paraguay_' || EXTRACT(EPOCH FROM NOW())::bigint || floor(random() * 1000)::text,
  'Paraguay',
  'pyg',
  NOW(),
  NOW()
);

-- Obtener el ID de la región recién creada
-- (Para usar en los siguientes comandos)

-- 2. Verificar que la región se creó correctamente
SELECT id, name, currency_code, created_at FROM region WHERE name = 'Paraguay';

-- 3. Asignar Paraguay a la nueva región
-- Primero obtener el ID de la región Paraguay
-- Luego actualizar el país Paraguay para que apunte a esta región

-- Para obtener el ID de la región Paraguay:
-- SELECT id FROM region WHERE name = 'Paraguay';

-- 4. Configurar impuestos paraguayos (IVA 10%)
-- Se configurará después de crear la región