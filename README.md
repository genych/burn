# hhvm curl stress test

## Running:

`docker build -t tug .` — build image

`docker run --tty --interactive --privileged -p 8080:80 tug /bin/bash -l` — run it

`/usr/bin/hhvm -d hhvm.hack.lang.look_for_typechecker=0 -m server -p 8080 -d hhvm.jit=false &` — start server inside

`hhvm -d hhvm.hack.lang.look_for_typechecker=0 burn.hh http://localhost:8080/burn.hh http://localhost:8080 1 10` — test

## Effects:

After a few attempts hhvm serving requests through proxygen:

- either becomes unresponsive and hangs with 100% cpu usage
- or segfaults

