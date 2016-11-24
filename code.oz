%====INFORMATION====%
% LFSAB1402 Projet 2016
% Nomas : 34261300-14631300
% Noms : (Lardinois,Simon)-(Harper,Igor)
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
		    withIfThenElse:false
		    withComparison:false
		    withTimeWindow:true
		    withCheckMapEasy:false
		    withCheckMapComplete:false
		   )
in
   Map = map(ru:
		%% WATER %%
		scale(
		   rx: 100.0
		   ry: 100.0
		   1: translate(
			 dx: 200.0
			 dy: 200.0
			 1: primitive(kind: water)
			 |nil)
		   |nil)
	     %% P %%
	     |scale(
		 rx: 10.0
		 ry: 140.0
		 1: translate(
		       dx: 0.0
		       dy: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 50.0
		 ry: 10.0
		 1: translate(
		       dx: 10.0
		       dy: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 10.0
		 ry: 50.0
		 1: translate(
		       dx: 60.0
		       dy: 20.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 50.0
		 ry: 10.0
		 1: translate(
		       dx: 10.0
		       dy: 70.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     %% O %%
	     |scale(
		 rx: 10.0
		 ry: 120.0
		 1: translate(
		       dx: 80.0
		       dy: 20.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 50.0
		 ry: 10.0
		 1: translate(
		       dx: 80.0
		       dy: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 10.0
		 ry: 120.0
		 1: translate(
		       dx: 120.0
		       dy: 20.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 50.0
		 ry: 10.0
		 1: translate(
		       dx: 80.0
		       dy: 140.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     %% K %%
	     |scale(
		 rx: 10.0
		 ry: 140.0
		 1: translate(
		       dx: 140.0
		       dy: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 76.267
		 ry: 10.0
		 1: rotate(
		       angle: 60.0
		       1: translate(
			     dx: 150.0
			     dy: 77.5
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     |scale(
		 rx: 76.267
		 ry: 10.0
		 1: rotate(
		       angle: ~60.0
		       1: translate(
			     dx: 160.0
			     dy: 82.5
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     %% E %%
	     |scale(
		 rx: 10.0
		 ry: 140.0
		 1: translate(
		       dx: 210.0
		       dy: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 50.0
		 ry: 10.0
		 1: translate(
		       dx: 220.0
		       dy: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 50.0
		 ry: 10.0
		 1: translate(
		       dx: 220.0
		       dy: 75.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 50.0
		 ry: 10.0
		 1: translate(
		       dx: 220.0
		       dy: 140.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     %% M %%
	     |scale(
		 rx: 10.0
		 ry: 140.0
		 1: translate(
		       dx: 280.0
		       dy: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 90.0
		 ry: 10.0
		 1: rotate(
		       angle: ~70.0
		       1: translate(
			     dx: 297.26
			     dy: 10.0
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     |scale(
		 rx: 90.0
		 ry: 10.0
		 1: rotate(
		       angle: 70.0
		       1: translate(
			     dx: 322.26
			     dy: 95.0
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     |scale(
		 rx: 10.0
		 ry: 140.0
		 1: translate(
		       dx: 357.0
		       dy: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     %% O %%
	     |scale(
		 rx: 10.0
		 ry: 120.0
		 1: translate(
		       dx: 377.0
		       dy: 20.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 50.0
		 ry: 10.0
		 1: translate(
		       dx: 377.0
		       dy: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 10.0
		 ry: 120.0
		 1: translate(
		       dx: 417.0
		       dy: 20.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 50.0
		 ry: 10.0
		 1: translate(
		       dx: 377.0
		       dy: 140.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     %% N %%
	     |scale(
		 rx: 10.0
		 ry: 140.0
		 1: translate(
		       dx: 437.0
		       dy: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 142.5
		 ry: 10.0
		 1: rotate(
		       angle: ~75.0
		       1: translate(
			     dx: 455.0
			     dy: 10.0
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     |scale(
		 rx: 10.0
		 ry: 140.0
		 1: translate(
		       dx: 490.0
		       dy: 10.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)

	     %% G %%
	     |scale(
		 rx: 10.0
		 ry: 120.0
		 1: translate(
		       dx: 135.5
		       dy: 360.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 70.0
		 ry: 10.0
		 1: translate(
		       dx: 135.5
		       dy: 350.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 70.0
		 ry: 10.0
		 1: translate(
		       dx: 135.5
		       dy: 480.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 10.0
		 ry: 50.0
		 1: translate(
		       dx: 195.5
		       dy: 430.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 40.0
		 ry: 10.0
		 1: translate(
		       dx: 165.5
		       dy: 420.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     %% O %%
	     |scale(
		 rx: 10.0
		 ry: 120.0
		 1: translate(
		       dx: 215.5
		       dy: 360.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 50.0
		 ry: 10.0
		 1: translate(
		       dx: 225.5
		       dy: 350.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 10.0
		 ry: 120.0
		 1: translate(
		       dx: 275.5
		       dy: 360.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 50.0
		 ry: 10.0
		 1: translate(
		       dx: 225.5
		       dy: 480.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     %% Z %%
	     |scale(
		 rx: 70.0
		 ry: 10.0
		 1: translate(
		       dx: 295.5
		       dy: 350.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |scale(
		 rx: 130.0
		 ry: 10.0
		 1: rotate(
		       angle: 62.0
		       1: translate(
			     dx: 295.5
			     dy: 475.0
			     1: primitive(kind: building)
			     |nil)
		       |nil)
		 |nil)
	     |scale(
		 rx: 70.0
		 ry: 10.0
		 1: translate(
		       dx: 295.5
		       dy: 480.0
		       1: primitive(kind: building)
		       |nil)
		 |nil)
	     |nil

	     pu:
		translate(
		   dx: 250.0
		   dy: 250.0
		   1: primitive(kind: pokemon)
		   |nil
		   )
	     |spawn(tmin: 3.0
		    tmax: 7.0
		    1: translate(
			  dx: 100.0
			  dy: 150.0
			  1: primitive(kind: arena)
			  |nil)
		    |nil)	     
	     |nil
	    )

   fun{MyFunction Map}
      local
	 fun{Evaluate Expr}
	    if {Float.is Expr} then
	       Expr
	    else
	       case Expr
	       of plus(X Y) then {Evaluate X}+{Evaluate Y}
	       [] minus(X Y) then {Evaluate X}-{Evaluate Y}
	       [] mult(X Y) then {Evaluate X}*{Evaluate Y}
	       [] 'div'(X Y) then {Evaluate X}/{Evaluate Y}
	       [] cos(X) then {Float.cos {Evaluate X}/180.0*3.1415}
	       [] sin(X) then {Float.sin {Evaluate X}/180.0*3.1415}
	       [] tan(X) then {Float.tan {Evaluate X}/180.0*3.1415}
	       [] exp(X) then {Float.exp X}
	       [] log(X) then {Float.log X}
	       [] neg(X) then ~{Evaluate X}
	       end
	    end
	 end
	 
	 fun{MakeItemFun Item P1 P2 P3 P4 T1 T2 Spawn}
	    case Item
	    of translate(dx:X dy:Y 1:NextItem)|T then
	       local DX DY in
		  DX = {Evaluate X}
		  DY = {Evaluate Y}
		  {MakeItemFun NextItem pt(x:P1.x+DX y:P1.y+DY)
		                        pt(x:P2.x+DX y:P2.y+DY)
		                        pt(x:P3.x+DX y:P3.y+DY)
		                        pt(x:P4.x+DX y:P4.y+DY)
		                        T1 T2 Spawn}
		  |{MakeItemFun T P1 P2 P3 P4 T1 T2 Spawn}
	       end
	    [] scale(rx:X ry:Y 1:NextItem)|T then
	       local RX RY in
		  RX = {Evaluate X}
		  RY = {Evaluate Y}
		  {MakeItemFun NextItem pt(x:P1.x*RX y:P1.y*RY)
		                        pt(x:P2.x*RX y:P2.y*RY)
		                        pt(x:P3.x*RX y:P3.y*RY)
		                        pt(x:P4.x*RX y:P4.y*RY)
		                        T1 T2 Spawn}
		  |{MakeItemFun T P1 P2 P3 P4 T1 T2 Spawn}
	       end
	    [] rotate(angle:Angle 1:NextItem)|T then
	       local Cosinus Sinus in
		  Cosinus = {Evaluate cos(Angle)}
		  Sinus = {Evaluate sin(Angle)}
		  {MakeItemFun NextItem pt(x:P1.x*Cosinus+P1.y*Sinus y:P1.y*Cosinus-P1.x*Sinus)
		                        pt(x:P2.x*Cosinus+P2.y*Sinus y:P2.y*Cosinus-P2.x*Sinus)
		                        pt(x:P3.x*Cosinus+P3.y*Sinus y:P3.y*Cosinus-P3.x*Sinus)
		                        pt(x:P4.x*Cosinus+P4.y*Sinus y:P4.y*Cosinus-P4.x*Sinus)
		                        T1 T2 Spawn}
		  |{MakeItemFun T P1 P2 P3 P4 T1 T2 Spawn}
	       end
	    [] spawn(tmin:T1 tmax:T2 1:NextItem)|T then
	       local TMIN TMAX in
		  TMIN = {Evaluate T1}
		  TMAX = {Evaluate T2}
		  {MakeItemFun NextItem P1 P2 P3 P4 TMIN TMAX true}
		  |{MakeItemFun T P1 P2 P3 P4 TMIN TMAX true}
	       end
	    [] primitive(kind:Kind)|T then
	       fun{$ Time}
		  if (Spawn andthen Time < T2 andthen Time > T1) orelse Spawn == false then
		     if Kind == water orelse Kind == building then
			realitem(kind:Kind p1:P1 p2:P2 p3:P3 p4:P4)
		     elseif Kind == road then
			realitem(kind:Kind p1:P1 p2:P4)
		     else
			pokeitem(kind:Kind position:P1)
		     end
		  else
		     empty
		  end
	       end
	       |{MakeItemFun T P1 P2 P3 P4 T1 T2 Spawn}
	    [] nil then nil
	    end
	 end
	 
	 fun{MakeFunL RU PU}
	    case RU
	    of nil then
	       case PU
	       of nil then nil
	       [] H|T then
		  {MakeItemFun PU pt(x:0.0 y:0.0) pt(x:0.0 y:1.0) pt(x:1.0 y:1.0) pt(x:1.0 y:0.0) 0 0 false}|nil
	       end
	    [] H|T then
	       {MakeItemFun RU pt(x:0.0 y:0.0) pt(x:0.0 y:1.0) pt(x:1.0 y:1.0) pt(x:1.0 y:0.0) 0 0 false}|{MakeFunL nil PU}
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
      false %% TODO complete here the function for the checking of the maps
   end
   
   {Projet.run MyFunction Map MaxTime Extensions CheckMap}
end
