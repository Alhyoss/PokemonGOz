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
		    withCheckMapComplete:false
		   )
in
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
	     |nil
	    )

   fun{MyFunction Map}
      local
	 fun{Evaluate Expr Time}
	    if {Float.is Expr} then
	       Expr
	    else
	       case Expr
	       of time then Time
	       [] plus(X Y) then {Evaluate X Time}+{Evaluate Y Time}
	       [] minus(X Y) then {Evaluate X Time}-{Evaluate Y Time}
	       [] mult(X Y) then {Evaluate X Time}*{Evaluate Y Time}
	       [] 'div'(X Y) then {Evaluate X Time}/{Evaluate Y Time}
	       [] cos(X) then {Float.cos {Evaluate X Time}}
	       [] sin(X) then {Float.sin {Evaluate X Time}}
	       [] tan(X) then {Float.tan {Evaluate X Time}}
	       [] exp(X) then {Float.exp {Evaluate X Time}}
	       [] log(X) then {Float.log {Evaluate X Time}}
	       [] neg(X) then ~{Evaluate X Time}
	       [] ite(X Y Z) then
		  if {Evaluate X Time} == 0.0 then
		     {Evaluate Z Time}
		  else
		     {Evaluate Y Time}
		  end
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

	 fun{GetCoord Transformation Time P1 P2 P3 P4}
	    case Transformation
	    of nil then coord(p1:P1 p2:P2 p3:P3 p4:P4)
	    [] trans(X Y)|T then
	       local DX DY in
		  DX = {Evaluate X Time}
		  DY = {Evaluate Y Time}
		  {GetCoord T Time pt(x:P1.x+DX y:P1.y+DY)
		                   pt(x:P2.x+DX y:P2.y+DY)
		                   pt(x:P3.x+DX y:P3.y+DY)
		                   pt(x:P4.x+DX y:P4.y+DY)}
	       end
	    [] sc(X Y)|T then
	       local RX RY in
		  RX = {Evaluate X Time}
		  RY = {Evaluate Y Time}
		  {GetCoord T Time pt(x:P1.x*RX y:P1.y*RY)
		                   pt(x:P2.x*RX y:P2.y*RY)
		                   pt(x:P3.x*RX y:P3.y*RY)
		                   pt(x:P4.x*RX y:P4.y*RY)}
	       end
	    [] rot(Angle)|T then
	       local Sinus Cosinus in
		  Cosinus = {Evaluate cos(Angle) Time}
		  Sinus = {Evaluate sin(Angle) Time}
		  {GetCoord T Time pt(x:P1.x*Cosinus+P1.y*Sinus y:P1.y*Cosinus-P1.x*Sinus)
		                   pt(x:P2.x*Cosinus+P2.y*Sinus y:P2.y*Cosinus-P2.x*Sinus)
		                   pt(x:P3.x*Cosinus+P3.y*Sinus y:P3.y*Cosinus-P3.x*Sinus)
		                   pt(x:P4.x*Cosinus+P4.y*Sinus y:P4.y*Cosinus-P4.x*Sinus)}
	       end
	    end
	 end
	 
	 fun{MakeItemFun Item Transformation}
	    case Item
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
	       fun {$ Time}
		  local Coord in
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
	       |{MakeItemFun T Transformation}
	    end
	 end
	 
	 fun{MakeFunL RU PU}
	    case RU
	    of nil then
	       case PU
	       of nil then nil
	       [] H|T then
		  {MakeItemFun PU nil}
	       end
	    [] H|T then
	       {MakeItemFun RU nil}|{MakeFunL nil PU}
	    end
	 end
	 
	 fun {Append L1 L2}
	    case L1
	    of nil then L2
	    [] H|T then H|{Append T L2}
	    end
	 end
	 
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
	 {Flatten {MakeFunL Map.ru Map.pu} nil}
      end
   end
   
   fun{CheckMap Map}
      local
	 fun{Check Item IsPU}
	    case Item
	    of nil then true
	    [] translate(dx:X dy:Y 1:NextItem)|T then
	       {Evaluate X IsPU} andthen {Evaluate Y IsPU} andthen {Check NextItem IsPU} andthen {Check T IsPU}
	    [] scale(rx:X ry:Y 1:NextItem)|T then
	       {Evaluate X IsPU} andthen {Evaluate Y IsPU} andthen {Check NextItem IsPU} andthen {Check T IsPU}
	    [] rotate(angle:X 1:NextItem)|T then
	       {Evaluate X IsPU} andthen {Check NextItem IsPU} andthen {Check T IsPU}
	    %[] spawn(tmin:X tmax:Y 1:NextItem)|T then
	     %  IsPU andthen {Int.is X} andthen {Int.is Y} andthen {Check NextItem IsPU} andthen {Check T IsPU}
	    [] primitive(kind:Kind)|T then
	       if ((Kind == water orelse Kind == building orelse Kind == road) andthen IsPU == false) orelse
		     ((Kind == pokemon orelse Kind == pokestop orelse Kind == arena) andthen IsPU) then
		  {Check T IsPU}
	       else false
	       end
	    else
	       false
	    end
	 end
	 
	 fun{Evaluate Expr IsPU}
	    if {Float.is Expr} then
	       true
	    else
	       case Expr
	       of time then IsPU
	       [] plus(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] minus(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] mult(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] 'div'(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       [] cos(X) then {Evaluate X IsPU}
	       [] sin(X) then {Evaluate X IsPU}
	       [] tan(X) then {Evaluate X IsPU}
	       %[] exp(X) then {Evaluate X IsPU}
	       %[] log(X) then {Evaluate X IsPU}
	       %[] neg(X) then {Evaluate X IsPU}
	       %[] ite(X Y Z) then {Evaluate X IsPU} andthen {Evaluate Y IsPU} andthen {Evaluate Z IsPU}
	       %[] eq(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       %[] ne(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       %[] lt(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       %[] le(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       %[] gt(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       %[] ge(X Y) then {Evaluate X IsPU} andthen {Evaluate Y IsPU}
	       else false
	       end
	    end
	 end
      in 
	 {Check Map.ru false} andthen {Check Map.pu true}
      end
   end
   
   {Projet.run MyFunction Map MaxTime Extensions CheckMap}
end
