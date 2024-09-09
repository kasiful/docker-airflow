# Gunakan image miniconda3 sebagai base image
FROM continuumio/miniconda3

# Set working directory
WORKDIR /app

# Update dan install JupyterLab dan Apache Airflow
RUN conda update -n base -c defaults conda && \
    conda create -p /opt/conda/envs/myenv python=3.11 && \
    conda install -p /opt/conda/envs/myenv -c conda-forge jupyterlab apache-airflow pymysql

# Install ODBC Driver 17 for SQL Server
RUN apt-get update && \
    apt-get install -y curl gnupg unixodbc-dev && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    ACCEPT_EULA=Y apt-get install -y msodbcsql17 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Verifikasi instalasi driver
RUN odbcinst -q -d -n "ODBC Driver 17 for SQL Server"

# Buat volume untuk environment
VOLUME /opt/conda/envs

# Expose port untuk JupyterLab
EXPOSE 8888

# Command default
CMD ["bash"]
