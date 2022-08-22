FROM gcr.io/getindata-images-public/dbt-dataops:gcp-0.5.0

ADD analyses /dbt/analyses/
ADD seeds /dbt/seeds/
ADD macros /dbt/macros/
ADD models /dbt/models/
ADD docs /dbt/docs/
ADD tests /dbt/tests/
COPY target/catalog.json /dbt/target/

ADD dbt_project.yml /dbt/dbt_project.yml
ADD packages.yml /dbt/packages.yml

ADD build/profiles/env_execution/profiles.yml /root/.dbt/profiles.yml
ADD config/base/datahub_assertions.yml /dbt/
RUN GCP_KEY_PATH="" dbt deps