binary(Str, Dec) :-
    validate_binary(Str),
    string_codes(Str, Chars),
    binary_conversion(Chars, 0, Dec).

validate_binary(Str) :-
    string_codes(Str, Codes),
    valid_binary_codes(Codes).

valid_binary_codes([]).
valid_binary_codes([Code|Rest]) :-
    member(Code, [48, 49]),
    valid_binary_codes(Rest).

binary_conversion([], Decimal, Decimal).
binary_conversion([Bit|Rest], Acc, Decimal) :-
    BitCode is Bit - 48,
    NewAcc is (Acc * 2) + BitCode,
    binary_conversion(Rest, NewAcc, Decimal).
    