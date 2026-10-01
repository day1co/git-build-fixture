# Minimal container used to test building from a public git repository.
# The build prints three marker lines (start, middle, end) so a test can confirm
# that the complete build log arrived. Contains no secrets.
FROM mirror.gcr.io/library/busybox:1.36
RUN echo "GIT_FIXTURE_MARK_START"
RUN mkdir -p /www && printf "ok\n" > /www/index.html && echo "GIT_FIXTURE_MARK_MIDDLE"
RUN echo "GIT_FIXTURE_MARK_END"
EXPOSE 8080
CMD ["httpd", "-f", "-v", "-p", "8080", "-h", "/www"]
