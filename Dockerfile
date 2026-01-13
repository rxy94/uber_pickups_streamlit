FROM python:3.10
RUN pip install streamlit
WORKDIR /app
ENTRYPOINT [ "streamlit", "run", "uber_pickups.py" ]