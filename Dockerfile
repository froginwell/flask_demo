FROM froginwell/pymkt:1.0.0

COPY flask_demo /tmp/src/flask_demo
COPY setup.py /tmp/src/setup.py
RUN cd /tmp/src && python setup.py install

EXPOSE 6001
EXPOSE 6002
EXPOSE 6003
EXPOSE 6004
EXPOSE 6005
EXPOSE 6006
EXPOSE 6007
EXPOSE 6008
EXPOSE 6009
EXPOSE 6010

ENTRYPOINT ["gunicorn"]
CMD ["-k", "gevent", \
     "-w", "1", \
     "--worker-connections", "10000", \
     "-b", "0.0.0.0:6001", \
     "-b", "0.0.0.0:6002", \
     "-b", "0.0.0.0:6003", \
     "-b", "0.0.0.0:6004", \
     "-b", "0.0.0.0:6005", \
     "-b", "0.0.0.0:6006", \
     "-b", "0.0.0.0:6007", \
     "-b", "0.0.0.0:6008", \
     "-b", "0.0.0.0:6009", \
     "-b", "0.0.0.0:6010", \
     "--reuse-port", \
     "flask_demo:app" \
    ]
