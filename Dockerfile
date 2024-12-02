# Use an existing image
FROM alpine

# Download and install a dependency
# Create a temporary container A with alpine image snapshot
# Add new package "gcc" into the snapshot
RUN apk add --update gcc
# Add new package "redis" into the snapshot
RUN apk add --update redis
# Delete the temporary container A
# After copy the latest image snapshot from container A
# And create new container <new-container-id>


# Tell the image what to do when it starts
# as a container
CMD ["redis-server"]