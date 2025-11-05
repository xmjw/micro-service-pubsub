# Sinatra / PSQL / PubSub POC

What we want to do here is build a basic sinatra application that can read/write to a database.
With each change we want to push to a PubSub Queue. From that queue, we want to read changes, and apply them to our data.

We'll make a companian app that represents the other side of this.

The point of this app is to learn how to deploy rich containerised services to GCP, but I really never got into containers in any detail.


