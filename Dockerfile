FROM jnewland/git-and-stuff

LABEL "version"="0.0.1"
LABEL "repository"="https://github.com/ShaunLWM/action-join"
LABEL "maintainer"="ShaunLWM"

LABEL "com.github.actions.name"="Join Notification"
LABEL "com.github.actions.description"="Send a push notification to Join."
LABEL "com.github.actions.icon"="send"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]