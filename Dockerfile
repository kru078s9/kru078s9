FROM goyoong33/newlocust
ADD locust-tasks /locust-tasks
# COPY locust-tasks /locust-tasks
USER root
RUN chmod +x /locust-tasks/run.sh
# CMD ["/bin/bash", "/locust-tasks/run.sh"]

USER locust
ENTRYPOINT ["/locust-tasks/run.sh"]
# RUN ["chmod", "+x", "/locust-tasks/run.sh"]
EXPOSE 5557 5558 8089
