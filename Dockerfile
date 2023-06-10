FROM google/dart:2.15.1

WORKDIR /app

COPY pubspec.* ./
RUN dart pub get --no-precompile

COPY . .

ENTRYPOINT ["dart", "-Ddart.vm.args=--enable-asserts", "bin/main.dart"]
