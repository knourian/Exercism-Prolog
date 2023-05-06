triangleCheck(Side1, Side2, Side3) :-
    Side1 =\= 0,Side2 =\= 0 , Side3 =\= 0,
    Side1 + Side2 >= Side3,
    Side1 + Side3 >= Side2,
    Side2 + Side3 >= Side1.

equilateralCheck(Side1, Side2, Side3) :- 
    Side1 =:= Side2, 
    Side2 =:= Side3.
    
isoscelesCheck(Side1,Side2,Side3) :- 
    Side1=:=Side2;
    Side1=:=Side3;
    Side2=:=Side3.

scaleneCheck(Side1,Side2,Side3) :- 
    Side1 =\= Side2, 
    Side1=\=Side3, 
    Side2=\=Side3.


triangle(Side1, Side2, Side3, Type) :- 
    Type == "equilateral" ,
    triangleCheck(Side1, Side2, Side3),
    equilateralCheck(Side1,Side2,Side3).

triangle(Side1, Side2, Side3, Type):-
    Type == "isosceles",
    triangleCheck(Side1, Side2, Side3),
    isoscelesCheck(Side1,Side2,Side3).
triangle(Side1, Side2, Side3, Type):-
    Type == "scalene",
    triangleCheck(Side1, Side2, Side3),
    scaleneCheck(Side1,Side2,Side3).