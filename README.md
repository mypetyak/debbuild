Docker containers that build debian packages.

From your project root (that contains `debian/control`), build a debian package with:

    docker run --rm -v "$(pwd)":/pkg bunn/debbuild:jessie

To speed up rebuilds, you can create a new docker layer with your particular build-deps. See jessie_go.Docker as an example.
