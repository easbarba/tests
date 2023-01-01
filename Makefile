deps:
	./mvnw dependency:copy-dependencies

test:
	./mvnw test

build:
	./mvnw verify

run: build
	java -jar target/test-${TEST_VERSION}.jar

image:
	podman build --build-arg TEST_VERSION=$$(cat .version) -t test:${TEST_VERSION} -f d./Dockerfile
