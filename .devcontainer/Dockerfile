FROM paperist/texlive-ja:latest
RUN tlmgr update --self
RUN apt update && apt install -y git
CMD [ "bin/bash" ]
