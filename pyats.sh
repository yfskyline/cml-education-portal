date
pyats run genie --trigger-datafile ~/pyats/${1}/blitz.yaml --trigger-groups "And('enabled')" --testbed-file ~/pyats/${1}/testbed.yaml
fuser -k 60001/tcp
nohup pyats logs view --host 0.0.0.0 --port 60001 &
