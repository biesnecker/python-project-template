from collections.abc import Generator


def gen() -> Generator[int]:
    x = 0
    while True:
        yield x
        x += 1


x = gen()
y = next(x)
