# Explanations

The input_code has a fixed length (with modulo %) to store the X last inputs.

If the previous input was a long time ago, then the input_code is reset.

# Example :
 - Press A => "A"
 - Press B => "AB"
 - Press C => "ABC"
 - Press D => "ABCD"
 - Press A => "BCDA"
 - Press ? => "CDA?" ...
 - Waiting too long and then press C => "C"
Of course these letters are for the example, in the scoreboard we use digits

# guess_common_length
If the code should be "ABCD"

And the input_code is "AAAB"

Then the "AB" are in common and the length is 2

The player just have to input "CD" now to complete the code
