# Consuming
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic

# Consuming from the beginning
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --from-beginning

# Display key, values and timestamp in a consumer
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --formatter kafka.tools.DefaultMessageFormatter --property print.timestamp=true --property print.key=true --property print.value=true --property print.partition=true --from-beginning

# Start a consumer group
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --group my-first-application

# Start another consumer group from the beginning
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --group my-second-application --from-beginning
