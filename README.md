# Uber Pickups NYC - Streamlit Dashboard

Una aplicación interactiva de visualización de datos construida con Streamlit que muestra los pickups de Uber en la ciudad de Nueva York durante septiembre de 2014.

## Descripción

Esta aplicación web permite explorar de manera interactiva los datos de pickups de Uber en NYC, incluyendo:
- Visualización de datos en bruto
- Histograma de pickups por hora del día
- Mapa interactivo con filtro de hora para visualizar la distribución geográfica de los pickups

## Características

- **Carga de datos eficiente**: Utiliza `st.cache_data` para optimizar la carga de datos
- **Visualización interactiva**: Gráficos de barras y mapas interactivos
- **Filtros dinámicos**: Slider para filtrar pickups por hora
- **Interfaz responsive**: Construida con Streamlit para una experiencia de usuario fluida

## Tecnologías

- **Python 3.10**
- **Streamlit**:  Framework para aplicaciones web de datos
- **Pandas**: Manipulación y análisis de datos
- **NumPy**: Operaciones numéricas

## Instalación

### Opción 1: Instalación local

```bash
# Clonar el repositorio
git clone https://github.com/rxy94/uber_pickups_streamlit.git
cd uber_pickups_streamlit

# Instalar dependencias
pip install streamlit pandas numpy

# Ejecutar la aplicación
streamlit run src/uber_pickups.py
```

### Opción 2: Docker Compose (recomendado)

```bash
# Clonar el repositorio
git clone https://github.com/rxy94/uber_pickups_streamlit.git
cd uber_pickups_streamlit

# Construir la imagen
docker compose build

# Iniciar la aplicación con Docker Compose
docker-compose up
```

La aplicación estará disponible en `http://localhost:8501`

## Estructura del proyecto

```
uber_pickups_streamlit/
├── src/
│   └── uber_pickups.py      # Aplicación principal de Streamlit
├── Dockerfile                # Configuración de Docker
├── docker-compose.yml        # Orquestación de contenedores
└── README.md                 # Este archivo
```

## Uso

Una vez que la aplicación esté ejecutándose:

1. Abre tu navegador en `http://localhost:8501`
2. Marca el checkbox **"Show raw data"** para ver los datos sin procesar
3. Visualiza el histograma de pickups por hora
4. Usa el slider para filtrar por hora específica (0-23)
5. Observa el mapa actualizado con los pickups de la hora seleccionada

## Docker

### Dockerfile

El proyecto incluye un Dockerfile que: 
- Usa Python 3.10 como imagen base
- Instala Streamlit
- Configura el directorio de trabajo
- Define el comando de entrada para ejecutar la aplicación

### Docker Compose

El archivo `docker-compose.yml` proporciona: 
- Build automático de la imagen
- Mapeo del puerto 8501
- Volumen montado para desarrollo en caliente

## Datos

Los datos utilizados provienen de un dataset público de Uber disponible en:
```
https://s3-us-west-2.amazonaws.com/streamlit-demo-data/uber-raw-data-sep14.csv.gz
```

Dataset:  Pickups de Uber en NYC - Septiembre 2014

## Licencia

Este proyecto está disponible como código abierto. 

## Autor

**rxy94**
- GitHub: [@rxy94](https://github.com/rxy94)

## Agradecimientos

- Datos proporcionados por Streamlit Demo Data
- Framework Streamlit por hacer la visualización de datos tan accesible