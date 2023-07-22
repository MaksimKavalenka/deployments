# Producing
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first_topic
> hello world
>^C  (<- Ctrl + C is used to exit the producer)

# Producing with properties
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first_topic --producer-property acks=all
> some message that is acked

# Producing to a non existing topic
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic new_topic
> hello world

# Producing with keys
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first_topic --property parse.key=true --property key.separator=:
> course:kafka

# Producing (RoundRobinPartitioner)
kafka-console-producer.sh --bootstrap-server localhost:9092 --producer-property partitioner.class=org.apache.kafka.clients.producer.RoundRobinPartitioner --topic first_topic
