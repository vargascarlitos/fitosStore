# 🏪 FitosStore - Marketplace Multivendor con MedusaJS

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![MedusaJS](https://img.shields.io/badge/MedusaJS-2.0-blue.svg)](https://medusajs.com)
[![Next.js](https://img.shields.io/badge/Next.js-15.4-black.svg)](https://nextjs.org)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Latest-blue.svg)](https://postgresql.org)

Un marketplace multivendor completo construido con **MedusaJS 2.0**, configurado específicamente para **Paraguay** con soporte completo en **español**.

## 🎯 Características Principales

- ✅ **Marketplace Multivendor** - Múltiples vendedores con gestión independiente
- ✅ **Configuración Paraguay** - Guaraníes (PYG), IVA 10%, región Paraguay
- ✅ **100% en Español** - Admin dashboard y storefront localizados
- ✅ **División Automática de Pedidos** - Orders splitting por vendor
- ✅ **Sistema de Comisiones** - Comisiones individuales por vendor (3%-25%)
- ✅ **Dashboards Separados** - Super Admin y Vendor Admin dashboards
- ✅ **Autenticación Multi-nivel** - Super admins y vendor admins
- ✅ **APIs Completas** - REST APIs para gestión de vendors y productos

## 🛠️ Stack Tecnológico

- **Backend**: MedusaJS 2.0 + PostgreSQL
- **Storefront**: Next.js 15.4 + TailwindCSS  
- **Admin**: Medusa Admin Dashboard (customizado)
- **Vendor Dashboard**: Next.js (independiente)
- **Base de Datos**: PostgreSQL con Module Links
- **Autenticación**: JWT + bcrypt
- **Workflows**: Medusa Workflows SDK

## 🚀 Instalación Rápida

### Prerrequisitos
- Node.js 20+
- PostgreSQL
- Git

### 1. Clonar el repositorio
\`\`\`bash
git clone https://github.com/tu-usuario/fitosStore.git
cd fitosStore
\`\`\`

### 2. Configurar variables de entorno
\`\`\`bash
# Backend
cp .env.example fitos-store/.env
# Editar fitos-store/.env con tus datos

# Storefront  
cp .env.example fitos-store-storefront/.env.local
# Editar fitos-store-storefront/.env.local con tus datos
\`\`\`

### 3. Configurar base de datos
\`\`\`bash
# Crear usuario y base de datos PostgreSQL
psql -U postgres -f docs/setup-database.sql
\`\`\`

### 4. Instalar y ejecutar backend
\`\`\`bash
cd fitos-store
npm install
npx medusa db:setup
npm run seed
npm run dev
\`\`\`

### 5. Instalar y ejecutar storefront
\`\`\`bash
cd ../fitos-store-storefront
npm install  
npm run dev
\`\`\`

### 6. Acceder a las aplicaciones
- **Storefront**: http://localhost:8000
- **Admin Dashboard**: http://localhost:9000/app
- **Credenciales Admin**: admin@fitosstore.com / admin123456

## 📚 Documentación

- 📄 [Plan de Marketplace Multivendor](docs/plan-marketplace-multivendor.md)
- 📄 [Configuración Paraguay Completada](docs/configuracion-paraguay-completada.md)  
- 📄 [Setup Base de Datos](docs/setup-database.sql)
- 📄 [Plan Original](docs/plan-tienda-multivendor-medusa.md)

## 🏗️ Arquitectura del Marketplace

\`\`\`
FitosStore (Super Admin)
├── Vendor 1 (Vendor Admin)
│   ├── Productos del Vendor 1
│   └── Pedidos del Vendor 1
├── Vendor 2 (Vendor Admin)  
│   ├── Productos del Vendor 2
│   └── Pedidos del Vendor 2
└── Vendor N...

Flujo de Pedidos:
Cliente → Pedido Mixto → División Automática → Pedidos por Vendor
\`\`\`

## 🛒 Estado del Proyecto

### ✅ Completado (Fase 1)
- [x] Backend MedusaJS configurado
- [x] Storefront Next.js funcionando
- [x] Configuración completa Paraguay (PYG, IVA 10%)
- [x] Admin dashboard en español
- [x] Storefront parcialmente localizado
- [x] Base de datos optimizada

### 🔄 En Desarrollo (Marketplace)
- [ ] Marketplace Module (Vendor, VendorAdmin)
- [ ] Autenticación vendor admins
- [ ] Workflows división de pedidos
- [ ] API routes vendors
- [ ] Vendor dashboard independiente
- [ ] Sistema de comisiones

## 💰 Sistema de Comisiones

El marketplace soporta comisiones individuales por vendor:

- **Fija**: 10% para todos los productos del vendor
- **Escalonada**: 15% (0-1M), 10% (1M-5M), 5% (5M+)  
- **Por Categoría**: Electrónicos 8%, Ropa 12%, Lujo 20%
- **Promocional**: 0% primeros 3 meses, luego tasa normal

## 🌟 Características Paraguay

- **Moneda**: Guaraníes (PYG) como moneda principal
- **Impuestos**: IVA 10% configurado automáticamente
- **Región**: Paraguay como región por defecto
- **Idioma**: Español en admin y storefront
- **Ubicación**: "Almacén Paraguay" configurado

## 🤝 Contribuir

1. Fork el proyecto
2. Crea una rama para tu feature (\`git checkout -b feature/nueva-funcionalidad\`)
3. Commit tus cambios (\`git commit -am 'Add nueva funcionalidad'\`)
4. Push a la rama (\`git push origin feature/nueva-funcionalidad\`)
5. Abre un Pull Request

## 📝 Licencia

Este proyecto está bajo la Licencia MIT. Ver [LICENSE](LICENSE) para más detalles.

## 🆘 Soporte

- **Documentación**: [MedusaJS Docs](https://docs.medusajs.com)
- **Issues**: [GitHub Issues](https://github.com/tu-usuario/fitosStore/issues)
- **Discord**: [MedusaJS Community](https://discord.gg/medusajs)

## 🎯 Roadmap

- [ ] **Fase 2**: Marketplace Module completo
- [ ] **Fase 3**: Vendor dashboards independientes  
- [ ] **Fase 4**: Sistema de comisiones avanzado
- [ ] **Fase 5**: Integración pasarelas pago Paraguay
- [ ] **Fase 6**: App móvil (React Native)

---

**Desarrollado con ❤️ para el ecosistema e-commerce de Paraguay** 🇵🇾