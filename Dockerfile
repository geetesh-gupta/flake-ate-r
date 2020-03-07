FROM python:3.7

# Define github action metadata
LABEL "com.github.actions.name"="Flake8 Checker"
LABEL "com.github.actions.description"="Checks repository against flake8"
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="purple"
LABEL "repository"="https://github.com/geetesh-gupta/flake-ate-r"
LABEL "homepage"="https://github.com/geetesh-gupta/flake-ate-r"
LABEL "maintainer"="Geetesh Gupta <gupta.15@iitj.ac.in>"

# Include required files
ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh

# Commands to run
RUN pip install -r requirements.txt
RUN chmod +x /entrypoint.sh

# Define entrypoint
ENTRYPOINT ["/entrypoint.sh"]
