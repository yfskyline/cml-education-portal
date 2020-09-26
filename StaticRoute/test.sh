date
pyats run genie --trigger-datafile blitz.yaml --trigger-groups "And('test')" --testbed-file ~/pyats/StaticRoute/testbed.yaml
fuser -k 60001/tcp
nohup pyats logs view --host 0.0.0.0 --port 60001
