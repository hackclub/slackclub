#!/bin/sh

# Replaces ${var:def} expressions in text files with environment variables with
# an optional default.
#
# Assuming VAR1 contains the value "foo" nad VAR2 is undefined, the following
# expressions will evaluate as given on the right side:
#
# ${VAR1}     ~> foo
# ${VAR2:bar} ~> bar
# ${VAR1:bar} ~> foo
# ${VAR2}     ~>     (empty string)
#
# From https://gist.github.com/niclashoyer/8146033
replace_env_variables() {
  perl -p -e 's/\$\{([^}:]+)(:([^}:]+))?\}/defined $ENV{$1} ? $ENV{$1} : $3/eg' $1
}

CONFIG_TEMPLATE=config.json.tmpl
TMP_CONFIG_FILE=$(mktemp).json

replace_env_variables $CONFIG_TEMPLATE > $TMP_CONFIG_FILE
slack-irc --config $TMP_CONFIG_FILE
