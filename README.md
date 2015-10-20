# slackEDU [![Circle CI](https://circleci.com/gh/hackedu/slackedu.svg?style=svg)](https://circleci.com/gh/hackedu/slackedu)

slackEDU is hackEDU's friendly
[`slack-irc`](https://github.com/ekmartin/slack-irc) bridge. She connects
`#hackedu` on freenode to `#hackedu` on our private club leader Slack.

## Getting Started

Build the Docker container:

    $ docker build -t hackedu/slackedu .

And then run the Docker container with the environment variables `SLACK_TOKEN`
and `NICKSERV_PASSWORD` set, and you should be good to go. Example:

    $ docker run -e SLACK_TOKEN=todo -e NICKSERV_PASSWORD=todo hackedu/slackedu

## License

See [LICENSE](LICENSE).
