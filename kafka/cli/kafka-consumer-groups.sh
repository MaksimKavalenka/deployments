# List consumer groups
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list

# Describe a group
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-application

# Dry Run: reset offsets to the beginning of each partition
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group my-first-application --reset-offsets --to-earliest --topic first_topic --dry-run

# execute flag is needed
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group my-first-application --reset-offsets --to-earliest --topic first_topic --execute
