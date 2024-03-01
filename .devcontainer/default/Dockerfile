FROM swiftlang/swift:nightly-main-focal

RUN \
  git clone https://github.com/apple/swift-format.git /opt/swift-format && \
  cd /opt/swift-format && \
  # Release is very slow to build, debug is not that much slower at runtime
  swift build -c debug && \
  cp /opt/swift-format/.build/debug/swift-format /usr/local/bin/swift-format && \
  rm -rf /opt/swift-format
