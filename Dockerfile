# Gunakan image miniconda3 sebagai base image
FROM continuumio/miniconda3

# Set working directory
WORKDIR /app

# Update dan install JupyterLab dan Apache Airflow
RUN conda update -n base -c defaults conda && \
    conda create -n myenv python=3.11 && \
    conda install -n myenv -c conda-forge jupyterlab && \
    conda install -n myenv -c conda-forge apache-airflow && \
    conda install -n myenv -c conda-forge pymysql

# Buat volume untuk environment
VOLUME /app/envs

# Expose port untuk JupyterLab
EXPOSE 8888

# Command default
CMD ["bash"]
