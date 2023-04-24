FROM debian:bullseye

RUN apt-get clean && apt-get update && apt-get install -y \
	ca-certificates \
	fontconfig \
	lmodern \
	texlive-fonts-recommended \
	texlive-xetex \
	texlive-latex-recommended \
	texlive-plain-generic \
	fonts-linuxlibertine \
	--no-install-recommends

COPY Monaco_Linux.ttf /usr/share/fonts/truetype/custom/
RUN fc-cache -f -v

# from github.com/mjibson/cv:
# docker build -t xelatex .
# docker run --rm -v $(pwd):/data xelatex xelatex -output-directory=/data /data/resume.tex
