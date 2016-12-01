%====INFORMATION====%
% LFSAB1402 Projet 2016
% Nomas : 34261300-14631300
% Noms : (Lardinois,Simon)-(Winandy,Igor)
%====MODULELINK====%
declare
{Property.put 'MyDir' '/home/simon/University/LFSAB1402/Projet/'} %% TODO ajoutez cette ligne si les images ne s'affichent pas et remplacez ./ par le chemin vers le dossier des images
[Projet]={Module.link ["/home/simon/University/LFSAB1402/Projet/Projet2016.ozf"]}

%====CODE====%
local
   MaxTime = 10 % nombre de frame à l'animation
   MyFunction
   Map
   CheckMap
   Extensions = opt(withExtendedFormula:true
		    withIfThenElse:true
		    withComparison:true
		    withTimeWindow:false
		    withCheckMapEasy:true
		    withCheckMapComplete:true
		   )
in
   % The definition of the map
   Map = map(ru:
		%% P %%
	     translate(
		dx: 0.0
		dy: 10.0
		1: scale(
		      rx: 10.0
		      ry: 140.0
		      1: primitive(kind: building)
		      |nil)
		|nil)
	     |translate(
		 dx: 10.0
		 dy: 10.0
		 1: scale(
		       rx: 50.0
		       ry: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 60.0
		 dy: 20.0
		 1: scale(
		       rx: 10.0
		       ry: 50.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 10.0
		 dy: 70.0
		 1: scale(
		       rx: 50.0
		       ry: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     %% O %%
	     |translate(
		 dx: 80.0
		 dy: 10.0
		 1: scale(
		       rx: 50.0
		       ry: 140.0
		       1: primitive(kind: water)
		       |nil)
		 |nil)
	     %% K %%
	     |translate(
		 dx: 140.0
		 dy: 10.0
		 1: scale(
		       rx: 10.0
		       ry: 140.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 150.0
		 dy: 77.5
		 1: rotate(
		       angle: 1.0472
		       1: scale(
			     rx: 76.267
			     ry: 10.0
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     |translate(
		 dx: 160.0
		 dy: 82.5
		 1: rotate(
		       angle: ~1.0472
		       1: scale(
			     rx: 76.267
			     ry: 10.0
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     %% E %%
	     |translate(
		 dx: 210.0
		 dy: 10.0
		 1: scale(
		       rx: 10.0
		       ry: 140.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 220.0
		 dy: 10.0
		 1: scale(
		       rx: 50.0
		       ry: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 220.0
		 dy: 75.0
		 1: scale(
		       rx: 50.0
		       ry: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 220.0
		 dy: 140.0
		 1: scale(
		       rx: 50.0
		       ry: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     %% M %%
	     |translate(
		 dx: 280.0
		 dy: 10.0
		 1: scale(
		       rx: 10.0
		       ry: 140.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 297.26
		 dy: 10.0
		 1: rotate(
		       angle: ~1.222
		       1: scale(
			     rx: 90.0
			     ry: 10.0
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     |translate(
		 dx: 322.26
		 dy: 95.0
		 1: rotate(
		       angle: 1.222
		       1: scale(
			     rx: 90.0
			     ry: 10.0
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     |translate(
		 dx: 357.0
		 dy: 10.0
		 1: scale(
		       rx: 10.0
		       ry: 140.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     %% O %%
	     |translate(
		 dx: 377.0
		 dy: 10.0
		 1: scale(
		       rx: 50.0
		       ry: 140.0
		       1: primitive(kind: water)
		       |nil)
		 |nil)
	     %% N %%
	     |translate(
		 dx: 437.0
		 dy: 10.0
		 1: scale(
		       rx: 10.0
		       ry: 140.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 455.0
		 dy: 10.0
		 1: rotate(
		       angle: ~1.309
		       1: scale(
			     rx: 142.5
			     ry: 10.0
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     |translate(
		 dx: 490.0
		 dy: 10.0
		 1: scale(
		       rx: 10.0
		       ry: 140.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     %% G %%
	     |translate(
		 dx: 135.0
		 dy: 360.0
		 1: scale(
		       rx: 10.0
		       ry: 120.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 135.0
		 dy: 350.0
		 1: scale(
		       rx: 70.0
		       ry: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 135.0
		 dy: 480.0
		 1: scale(
		       rx: 70.0
		       ry: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 195.0
		 dy: 430.0
		 1: scale(
		       rx: 10.0
		       ry: 50.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 165.0
		 dy: 420.0
		 1: scale(
		       rx: 40.0
		       ry: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	      %% O %%
	     |translate(
		 dx: 215.0
		 dy: 350.0
		 1: scale(
		       rx: 70.0
		       ry: 140.0
		       1: primitive(kind: water)
		       |nil)
		 |nil)
	     %% Z %%
	     |translate(
		 dx: 295.5
		 dy: 350.0
		 1: scale(
		       rx: 70.0
		       ry: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |translate(
		 dx: 295.5
		 dy: 475.0
		 1: rotate(
		       angle: 1.082
		       1: scale(
			     rx: 130.0
			     ry: 10.0
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     |translate(
		 dx: 295.5
		 dy: 480.0
		 1: scale(
		       rx: 70.0
		       ry: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |nil

	     pu:
	     translate(
		 dx: 250.0
		 dy: 250.0
		 1: primitive(kind: arena)
		|nil)
	     |translate(
		 dx: 100.0
		 dy: 250.0
		 1: translate(
		       dx: mult(10.0 time)
		       dy: 0.0
		       1: primitive(kind: pokemon)
		       |nil)
		 |nil)
	     |translate(
		 dx: 400.0
		 dy: 250.0
		 1: translate(
		       dx: mult(~10.0 time)
		       dy: 0.0
		       1: primitive(kind: pokemon)
		       |nil)
		 |nil)
	     |nil
	    )

   fun{MyFunction Map}
      local
	 %
	 % The Evaluate function has to evaluate the expression Expr, according
	 % to the semantic definition of <Formula> and <Value>.
	 % We suppose that Expr is a correct expression.
	 % It returns the float value represented by the expression:
	 % {Evaluate minus(3.0 2.0)} returns 1.0
	 % The Time is the Time argument given in the functions returned by MyFunction.
	 %
	 fun{Evaluate Expr Time}
	    if {Float.is Expr} then
	       Expr
	    else
	       case Expr
	       of time then Time % If we encounter the atom 'time', we return the Time value
	       [] plus(X Y) then {Evaluate X Time}+{Evaluate Y Time}
	       [] minus(X Y) then {Evaluate X Time}-{Evaluate Y Time}
	       [] mult(X Y) then {Evaluate X Time}*{Evaluate Y Time}
	       [] 'div'(X Y) then {Evaluate X Time}/{Evaluate Y Time}
	       [] cos(X) then {Float.cos {Evaluate X Time}}
	       [] sin(X) then {Float.sin {Evaluate X Time}}
	       [] tan(X) then {Float.tan {Evaluate X Time}}
	       % The <Formula> and <Value> extensions
	       [] exp(X) then {Float.exp {Evaluate X Time}}
	       [] log(X) then {Float.log {Evaluate X Time}}
	       [] neg(X) then ~{Evaluate X Time}
	       % The if-then-else extension
	       [] ite(X Y Z) then
		  if {Evaluate X Time} == 0.0 then
		     {Evaluate Z Time}
		  else
		     {Evaluate Y Time}
		  end
	       % The comparison extension
	       [] eq(X Y) then
		  if {Evaluate X Time} == {Evaluate Y Time} then 1.0
		  else 0.0
		  end
	       [] ne(X Y) then
		  if {Evaluate X Time} \= {Evaluate Y Time} then 1.0
		  else 0.0
		  end
	       [] lt(X Y) then
		  if {Evaluate X Time} < {Evaluate Y Time} then 1.0
		  else 0.0
		  end
	       [] le(X Y) then
		  if {Evaluate X Time} =< {Evaluate Y Time} then 1.0
		  else 0.0
		  end
	       [] gt(X Y) then
		  if {Evaluate X Time} > {Evaluate Y Time} then 1.0
		  else 0.0
		  end
	       [] ge(X Y) then
		  if {Evaluate X Time} >= {Evaluate Y Time} then 1.0
		  else 0.0
		  end
	       end
	    end
	 end

	 %
	 % The GetCoord function take a list of transformation, the time, and 4 points
	 % as input. It then translate; rotate or scale the four points according to
	 % the transformation in the lists. The Time argument us the Time argument given
	 % to the output functions returned by MyFunction.
	 % It returns a record containing the four points.
	 %
	 fun{GetCoord Transformation Time P1 P2 P3 P4}
	    case Transformation
	    of nil then coord(p1:P1 p2:P2 p3:P3 p4:P4) % When all the transformation are done, we return the points
	    [] trans(X Y)|T then
	       local DX DY in
		  % We get the float values of the expressions in trans
		  DX = {Evaluate X Time}
		  DY = {Evaluate Y Time}
		  % The function call itself with the tail of the list
		  {GetCoord T Time pt(x:P1.x+DX y:P1.y+DY)
		                   pt(x:P2.x+DX y:P2.y+DY)
		                   pt(x:P3.x+DX y:P3.y+DY)
		                   pt(x:P4.x+DX y:P4.y+DY)}
	       end
	    [] sc(X Y)|T then
	       local RX RY in
		  % We get the float values of the expressions in sc
		  RX = {Evaluate X Time}
		  RY = {Evaluate Y Time}
		  % The function call itself with the tail of the list
		  {GetCoord T Time pt(x:P1.x*RX y:P1.y*RY)
		                   pt(x:P2.x*RX y:P2.y*RY)
		                   pt(x:P3.x*RX y:P3.y*RY)
		                   pt(x:P4.x*RX y:P4.y*RY)}
	       end
	    [] rot(Angle)|T then
	       local Sinus Cosinus in
		  % We get the cos and sin of the float value of the expression in rot
		  Cosinus = {Evaluate cos(Angle) Time}
		  Sinus = {Evaluate sin(Angle) Time}
		  % The function call itself with the tail of the list
		  {GetCoord T Time pt(x:P1.x*Cosinus+P1.y*Sinus y:P1.y*Cosinus-P1.x*Sinus)
		                   pt(x:P2.x*Cosinus+P2.y*Sinus y:P2.y*Cosinus-P2.x*Sinus)
		                   pt(x:P3.x*Cosinus+P3.y*Sinus y:P3.y*Cosinus-P3.x*Sinus)
		                   pt(x:P4.x*Cosinus+P4.y*Sinus y:P4.y*Cosinus-P4.x*Sinus)}
	       end
	    end
	 end

	 %
	 % This is the main function of MyFunction. It take an item (<pokeUniverse> or <realUniverse>)
	 % as input and returns a list of function returning one mapItem each.
	 % Transformation is the list of the transformation that has to be applied on the mapItem.
	 % It first checks the pattern of the Item. If the item is a translate, a rotate or a scale
	 % record, the function calls itself with NextItem as input (the "1:" label in the record)
	 % updating the transformation list, and then again on the tail of the Item.
	 % If Item is a primitive, it returns a function, that first evaluates the coordinates
	 % of the four points after applying the transformations, and then returning the mapItem.
	 %
	 fun{MakeItemFun Item Transformation}
	    case Item % Item is a <pokeUniverse> or a <realUniverse>, so it is a list of record.
	    of nil then nil
	    [] translate(dx:DX dy:DY 1:NextItem)|T then
	       {MakeItemFun NextItem trans(DX DY)|Transformation}
	       |{MakeItemFun T Transformation}
	    [] scale(rx:RX ry:RY 1:NextItem)|T then
	       {MakeItemFun NextItem sc(RX RY)|Transformation}
	       |{MakeItemFun T Transformation}
	    [] rotate(angle:Angle 1:NextItem)|T then
	       {MakeItemFun NextItem rot(Angle)|Transformation}
	       |{MakeItemFun T Transformation}
	    [] primitive(kind:Kind)|T then
	       % we return the function representing this primitive
	       fun {$ Time}
		  local Coord in
		     % We first get the coordinates of the four points, after applying the transformations
		     Coord = {GetCoord Transformation Time pt(x:0.0 y:0.0) pt(x:0.0 y:1.0) pt(x:1.0 y:1.0) pt(x:1.0 y:0.0)}
		     if Kind == water orelse Kind == building then
			realitem(kind:Kind p1:Coord.p1 p2:Coord.p2 p3:Coord.p3 p4:Coord.p4)
		     elseif Kind == road then
			realitem(kind:Kind p1:Coord.p1 p2:Coord.p4)
		     else
			pokeitem(kind:Kind position:Coord.p1)
		     end
		  end
	       end
	       % We call MakeItemFun again on the tail of the list
	       |{MakeItemFun T Transformation}
	    end
	 end

	 % This is simply a function to combine to lists
	 fun {Append L1 L2}
	    case L1
	    of nil then L2
	    [] H|T then H|{Append T L2}
	    end
	 end

	 % This function "flatten" a list, it gives a list of simple element, not containing any lists.
	 fun {Flatten Lin Lout}
	    case Lin
	    of nil then Lout
	    [] H|T then
	       local NewL in
		  case H
		  of H1|T then
		     NewL = {Flatten H nil}
		  else
		     NewL = [H]
		  end
		  {Flatten T {Append Lout NewL}}
	       end
	    end
	 end
      in
	 % We have to call Flatten on the list returned by MakeItemFun because it is a list of lists.
	 {Flatten {MakeItemFun Map.ru nil}|{MakeItemFun Map.pu nil}|nil nil}
      end
   end

   fun{CheckMap Map}
      local
	 %
	 % This is the main function of CheckMap. It works quite like the MakeItemFun defined
	 % in MyFunction: it checks the patterns of Item, if it does not match any pattern, then
	 % the map is not well defined. If it matches a pattern, we call the Evaluate function on
	 % the elements that are supposed to be float, then it calls itself again on NextItem and
	 % on the tail of the list. When the list is empty, it means that we didn't encouter any
	 % mismatch, so the map is well defined and it returns true.
	 % The IsPU argument is a bool set to false when call on the realUniverse and to true
	 % otherwise. It is there for the elements that are only in one of the universe
	 %
	 fun{Check Item IsPU}
	    case Item
	    of nil then true %% By reaching here, the map was weel defined
	    [] translate(dx:X dy:Y 1:NextItem)|T then
	       % We have to check if X and Y are floats, then we call Check again on NextItem and T
	       {Evaluate X IsPU} andthen {Evaluate Y IsPU} andthen {Check NextItem IsPU} andthen {Check T IsPU}
	    [] scale(rx:X ry:Y 1:NextItem)|T then
	       % We have to check if X and Y are floats, then we call Check again on NextItem and T
	       % We also must be in the realUniverse (isPU == false)
	       IsPU == false andthen {Evaluate X IsPU} andthen {Evaluate Y IsPU} andthen {Check NextItem IsPU} andthen {Check T IsPU}
	    [] rotate(angle:X 1:NextItem)|T then
	       % We have to check if X is a float, then we call Check again on NextItem and T
	       % We also must be in the realUniverse (isPU == false)
	       IsPU == false andthen {Evaluate X IsPU} andthen {Check NextItem IsPU} andthen {Check T IsPU}
	    [] spawn(tmin:X tmax:Y 1:NextItem)|T then
	       % We have to check if X and Y are floats, then we call Check again on NextItem and T
	       % We also must be in the pokeUniverse (isPU == true)
	       IsPU andthen {Int.is X} andthen {Int.is Y} andthen {Check NextItem IsPU} andthen {Check T IsPU}
	    [] primitive(kind:Kind)|T then
	       % We check if Kind is valid
	       if ((Kind == water orelse Kind == building orelse Kind == road) andthen IsPU == false) orelse
		     ((Kind == pokemon orelse Kind == pokestop orelse Kind == arena) andthen IsPU) then
		  {Check T IsPU}
	       else false
	       end
	    else % If we don't match any pattern in the case, the map isn't well defined.
	       false
	    end
	 end

	 %
	 % This function checks if the expressions are floats. It returns true if it is,
	 % false otherwise.
	 %
	 fun{Evaluate Expr IsPU}
	    if {Float.is Expr} then %% If it is a float then it is... a float
	       true
	    else
	       case Expr
	       of time then IsPU % we can encouter the time atom only in the pokeUniverse
	       % If we have an expression, we call the function again on the arguments
	       [] plus(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] minus(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] mult(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] 'div'(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] cos(X) then {Evaluate X IsPU}
	       [] sin(X) then {Evaluate X IsPU}
	       [] tan(X) then {Evaluate X IsPU}
	       [] exp(X) then {Evaluate X IsPU}
	       [] log(X) then {Evaluate X IsPU}
	       [] neg(X) then {Evaluate X IsPU}
	       [] ite(X Y Z) then {Evaluate X IsPU} andthen {Evaluate Y IsPU} andthen {Evaluate Z IsPU}
	       [] eq(X Y) then IsPU andthen {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] ne(X Y) then IsPU andthen {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] lt(X Y) then IsPU andthen {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] le(X Y) then IsPU andthen {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] gt(X Y) then IsPU andthen {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] ge(X Y) then IsPU andthen {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       else false
	       end
	    end
	 end
      in
	 case Map
	 % We of course have to check whether the map has a realUniverse and a pokeUniverse!
	 of map(ru:RU pu:PU) then {Check RU false} andthen {Check PU true}
	 else false
	 end
      end
   end

   {Projet.run MyFunction Map MaxTime Extensions CheckMap}
end
