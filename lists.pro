first([S|_],S).
tail([_|Y],Y).

end([X],X).
end([_|T],Z):-
	end(T,Z).
