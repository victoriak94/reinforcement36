
def longest_consecutive(arr, k)

    if arr.length == 0 || k < 1 || k > arr.length
        return ''
    end

    strings_concat = []

    arr.each_cons(k) do |word|
        strings_concat << word.join
    end

    return strings_concat.max{| a, b | a.length <=> b.length }

end

puts longest_consecutive(['hi', 'marbles', 'mittens', 'bye', 'lorem', 'ipsum', 'to', 'a', 'hippocampus'], 3);  # -> 'marblesmittensbye'
