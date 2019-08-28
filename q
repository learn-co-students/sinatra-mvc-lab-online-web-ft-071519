
[1mFrom:[0m /mnt/c/Users/audre/dev/flatiron/labs/sinatra-mvc-lab-online-web-ft-071519/models/piglatinizer.rb @ line 11 PigLatinizer.consonant:

    [1;34m10[0m: [32mdef[0m [1;36mself[0m.[1;34mconsonant[0m
 => [1;34m11[0m:   binding.pry
    [1;34m12[0m:   word_array = [1;36mself[0m.text.split([31m[1;31m'[0m[31m[1;31m'[0m[31m[0m)
    [1;34m13[0m:   [32mif[0m word_array[[1;34m1[0m] == [35m[1;35m/[0m[35m[aeiou][1;35m/[0m[35m[0m
    [1;34m14[0m:     word_array.insert([1;34m-1[0m, word_array.delete_at([1;34m0[0m))
    [1;34m15[0m:     word_array.push([31m[1;31m'[0m[31may[1;31m'[0m[31m[0m)
    [1;34m16[0m:     [1;36mself[0m.text = word_array.join([31m[1;31m'[0m[31m[1;31m'[0m[31m[0m)
    [1;34m17[0m:   [32melse[0m
    [1;34m18[0m:     word_array.insert([1;34m-1[0m, word_array.delete_at([1;34m0[0m))
    [1;34m19[0m:     [1;36mself[0m.text = word_array.join([31m[1;31m'[0m[31m[1;31m'[0m[31m[0m)
    [1;34m20[0m:     consonant
    [1;34m21[0m:   [32mend[0m
    [1;34m22[0m: 
    [1;34m23[0m:   word
    [1;34m24[0m: [32mend[0m

