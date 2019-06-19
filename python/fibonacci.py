def fibonacci(n):
    if n == 0 : return []
    if n == 1 : return [0]
    if n == 2 : return [0, 1]

    output = [None] * n
    output[0] = 0
    output[1] = 1

    for i in range(2, n):
        f_minus_1 = output[i - 1]
        f_minus_2 = output[i - 2]
        output[i] = f_minus_1 + f_minus_2

    return output

if __name__ == "__main__":
    import timeit
    setup = "from __main__ import fibonacci"

    max = 100000
    increment = max / 20
    for n in range(0, max + 1, increment):
        result = timeit.timeit("fibonacci(" + str(n) + ")", setup = setup, number = 10)
        print(str(n) + ", " + str(result))

