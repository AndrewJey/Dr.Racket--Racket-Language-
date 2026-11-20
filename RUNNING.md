

<!-- local-development:start -->
# Desarrollo local

Puedes abrir este repositorio en VS Code, Antigravity o Sublime Text. El compilador y los servicios necesarios dependen del componente indicado abajo.

## Bases de datos

Revisa los scripts de esquema y crea una base de datos de prueba separada. SSMS 20 y pgAdmin 4 son clientes; SQL Server y PostgreSQL son motores distintos. Los scripts SQL Server no se ejecutan directamente en PostgreSQL. Las restauraciones deben hacerse sobre una base de prueba nueva. PostgreSQL 17 y 18 requieren comprobarse por separado.

## Archivos ignorados

`.gitignore` excluye credenciales locales, estado del editor y salidas de las herramientas detectadas. No deja de versionar archivos que ya estaban en Git. Los manifiestos, archivos de bloqueo, recursos fuente y scripts de esquema forman parte del código.
<!-- local-development:end -->

<!-- platform-tools:start -->
## Herramientas para otros componentes

### Racket / Scheme

Abre los fuentes en DrRacket y selecciona el lenguaje que declara cada archivo. Para código Scheme sin `#lang`, usa la implementación indicada en el material original. La compatibilidad de esos dialectos requiere su propia prueba.
<!-- platform-tools:end -->


<!-- improvements-20261119:start -->
## Mejoras y verificación — 2026-11-19 (Corrección de errores en tiempo de ejecución en Árbol Binario y Factorial (Racket))

- **Cambios:** Corregida llamada a constante `'()` en lugar del predicado `vacio-bt?` en `hoja-bt?`, reparada la cláusula `((= x (dato-bt bt)) bt)` en `insertar-bt` que pasaba la lista como argumento numérico a `=`, y añadida guarda `(<= x 0)` en `factorial`.
- **Validación:** Validador de S-expresiones y auditoría de sintaxis en 8/8 archivos `.rkt` (paréntesis balanceados y 0 errores `vacio-bt`/`insertar-bt`).
<!-- improvements-20261119:end -->
