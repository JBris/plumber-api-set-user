FROM rocker/shiny:4.1.0 as base

WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive \
    RENV_PATHS_ROOT=/app/renv \
    RENV_PATHS_LIBRARY=/app/renv/library \
    RENV_PATHS_CACHE=/app/renv/.cache

COPY plumber.R .

COPY app.R .

RUN install2.r -e -n -1 --skipinstalled plumber 

COPY create_user.sh .

COPY hello_user.sh .

EXPOSE 8080

CMD ["Rscript", "app.R"]