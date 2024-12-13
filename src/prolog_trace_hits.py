def get_first_word(line):
    if line == "":
        return
    words = line.split()
    if len(words) > 0:
        first_word = words[0]
        return first_word

with open("./trace_output.txt", 'r') as trace_file:

    while True:
        line = trace_file.readline()
        if line.strip() == "":  # run till it face an empty string.
            break

        first_word = get_first_word(line)

        if first_word == "Exit:":
            print(line, end="")
