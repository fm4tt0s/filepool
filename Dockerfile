FROM scratch
LABEL version="0.1"
LABEL author="felipe mattos"
LABEL email="fmattos@gmx.com"
COPY FILE_I_WANT_TO_SHARE /
COPY catgo /
ENTRYPOINT ["/catgo", "/FILE_I_WANT_TO_SHARE"]
