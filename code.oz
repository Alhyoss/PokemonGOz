%====INFORMATION====%
% LFSAB1402 Projet 2016
% Nomas : 34261300-NOMA2
% Noms : (Lardinois,Simon)-(Nom2,Prenom2)
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
   Extensions = opt(withExtendedFormula:false
		    withIfThenElse:false
		    withComparison:false
		    withTimeWindow:false
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
	     %% N %
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
	     |nil

	     pu:
		translate(
		   dx: 250.0
		   dy: 250.0
		   1:
		      primitive(kind: pokemon)
		   |nil
		   )
	     |nil
	    )

   fun{MyFunction Map}
      local
	 fun{MakeItemFun Item P1 P2 P3 P4}
	    case Item
	    of translate(dx:DX dy:DY 1:NextItem)|T then
	       {MakeItemFun NextItem pt(x:P1.x+DX y:P1.y+DY)
		                     pt(x:P2.x+DX y:P2.y+DY)
		                     pt(x:P3.x+DX y:P3.y+DY)
		                     pt(x:P4.x+DX y:P4.y+DY)}
	       |{MakeItemFun T P1 P2 P3 P4}
	    [] scale(rx:RX ry:RY 1:NextItem)|T then
	       {MakeItemFun NextItem pt(x:P1.x*RX y:P1.y*RY)
		                     pt(x:P2.x*RX y:P2.y*RY)
		                     pt(x:P3.x*RX y:P3.y*RY)
		                     pt(x:P4.x*RX y:P4.y*RY)}
	       |{MakeItemFun T P1 P2 P3 P4}
	    [] rotate(angle:Angle 1:NextItem)|T then
	       local Cosinus Sinus in
		  Cosinus = {Cos (Angle/180.0)*3.1415}
		  Sinus = {Sin (Angle/180.0)*3.1415}
		  {MakeItemFun NextItem pt(x:P1.x*Cosinus+P1.y*Sinus y:P1.y*Cosinus-P1.x*Sinus)
		                        pt(x:P2.x*Cosinus+P2.y*Sinus y:P2.y*Cosinus-P2.x*Sinus)
		                        pt(x:P3.x*Cosinus+P3.y*Sinus y:P3.y*Cosinus-P3.x*Sinus)
		                        pt(x:P4.x*Cosinus+P4.y*Sinus y:P4.y*Cosinus-P4.x*Sinus)}
		  |{MakeItemFun T P1 P2 P3 P4}
	       end
	    [] primitive(kind:Kind)|T then
	       fun{$ Time}
		  if Kind == water orelse Kind == building then
		     realitem(kind:Kind p1:P1 p2:P2 p3:P3 p4:P4)
		  elseif Kind == road then
		     realitem(kind:Kind p1:P1 p2:P4)
		  else
		     pokeitem(kind:Kind position:P1)
		  end
	       end
	       |{MakeItemFun T P1 P2 P3 P4}
	    [] nil then nil
	    end
	 end
	 
	 fun{MakeFunL RU PU}
	    case RU
	    of nil then
	       case PU
	       of nil then nil
	       [] H|T then
		  {MakeItemFun PU pt(x:0.0 y:0.0) pt(x:0.0 y:1.0) pt(x:1.0 y:1.0) pt(x:1.0 y:0.0)}|nil
	       end
	    [] H|T then
	       {MakeItemFun RU pt(x:0.0 y:0.0) pt(x:0.0 y:1.0) pt(x:1.0 y:1.0) pt(x:1.0 y:0.0)}|{MakeFunL nil PU}
	    end
	 end
      in
	 {Flatten {MakeFunL Map.ru Map.pu}}
      end
   end

   fun{CheckMap Map}
      false %% TODO complete here the function for the checking of the maps
   end
   
   {Projet.run MyFunction Map MaxTime Extensions CheckMap}
end
