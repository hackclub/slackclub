# Slack Club [![Circle CI](https://circleci.com/gh/hackclub/slackclub.svg?style=svg)](https://circleci.com/gh/hackclub/slackclub)

slackclub is Hack Club's friendly
[`slack-irc`](https://github.com/ekmartin/slack-irc) bridge. She connects
`#hackclub` on freenode to `#meta` on our private club leader Slack.

## Getting Started

Build the Docker container:

    $ docker build -t hackclub/slackclub .

And then run the Docker container with the environment variables `SLACK_TOKEN`
and `NICKSERV_PASSWORD` set, and you should be good to go. Example:

    $ docker run -e SLACK_TOKEN=todo -e NICKSERV_PASSWORD=todo hackclub/slackclub

## License

See [LICENSE](LICENSE).
