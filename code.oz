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
		scale(
		   rx: 100.0
		   ry: 100.0
		   1:
		      translate(
			 dx: 100.0
			 dy: 100.0
			 1:
			    primitive(kind: road)
			 |nil
			 )
		   |primitive(kind: building)
		   |nil
		   )
	     |nil

	     pu:
		translate(
		   dx: 250.0
		   dy: 250.0
		   1:
		      primitive(kind: pokestop)
		   |nil
		   )
	     |nil
	    )

   fun{MyFunction Map}
      local
	 fun{MakeItemFun Item P1 P2 P3 P4}
	    case Item
	    of translate(dx:DX dy:DY 1:NextItem)|nil then
	       {Browse 'translate|nil'}
	       {MakeItemFun NextItem pt(x:P1.x+DX y:P1.y+DY)
		                     pt(x:P2.x+DX y:P2.y+DY)
		                     pt(x:P3.x+DX y:P3.y+DY)
		                     pt(x:P4.x+DX y:P4.y+DY)}
	    [] translate(dx:DX dy:DY 1:NextItem)|T then
	       {Browse 'translate|T'}
	       {MakeItemFun NextItem pt(x:P1.x+DX y:P1.y+DY)
		                     pt(x:P2.x+DX y:P2.y+DY)
		                     pt(x:P3.x+DX y:P3.y+DY)
		                     pt(x:P4.x+DX y:P4.y+DY)}
	       |{MakeItemFun T P1 P2 P3 P4}
	    [] scale(rx:RX ry:RY 1:NextItem)|nil then
	       {Browse 'scale|nil'}
	       {MakeItemFun NextItem pt(x:P1.x*RX y:P1.y*RY)
		                     pt(x:P2.x*RX y:P2.y*RY)
		                     pt(x:P3.x*RX y:P3.y*RY)
		                     pt(x:P4.x*RX y:P4.y*RY)}
	    [] scale(rx:RX ry:RY 1:NextItem)|T then
	       {Browse 'scale|T'}
	       {MakeItemFun NextItem pt(x:P1.x*RX y:P1.y*RY)
		                     pt(x:P2.x*RX y:P2.y*RY)
		                     pt(x:P3.x*RX y:P3.y*RY)
		                     pt(x:P4.x*RX y:P4.y*RY)}
	       |{MakeItemFun T P1 P2 P3 P4}
	    [] rotate(angle:Angle 1:NextItem)|nil then
	       {Browse 'rotate|nil'}
	       {MakeItemFun NextItem pt(x:P1.x*cos(Angle)+P1.y*sin(Angle) y:P1.y*cos(Angle)-P1.x*sin(Angle))
		                     pt(x:P2.x*cos(Angle)+P2.y*sin(Angle) y:P2.y*cos(Angle)-P2.x*sin(Angle))
		                     pt(x:P3.x*cos(Angle)+P3.y*sin(Angle) y:P3.y*cos(Angle)-P3.x*sin(Angle))
		                     pt(x:P4.x*cos(Angle)+P4.y*sin(Angle) y:P4.y*cos(Angle)-P4.x*sin(Angle))}
	    [] rotate(angle:Angle 1:NextItem)|T then
	       {Browse 'rotate|T'}
	       {MakeItemFun NextItem pt(x:P1.x*cos(Angle)+P1.y*sin(Angle) y:P1.y*cos(Angle)-P1.x*sin(Angle))
		                     pt(x:P2.x*cos(Angle)+P2.y*sin(Angle) y:P2.y*cos(Angle)-P2.x*sin(Angle))
		                     pt(x:P3.x*cos(Angle)+P3.y*sin(Angle) y:P3.y*cos(Angle)-P3.x*sin(Angle))
		                     pt(x:P4.x*cos(Angle)+P4.y*sin(Angle) y:P4.y*cos(Angle)-P4.x*sin(Angle))}
	       |{MakeItemFun T P1 P2 P3 P4}
	    [] primitive(kind:Kind)|nil then
	       {Browse 'primitive|nil'}
	       {Browse Kind}
	       {Browse P1}
	       {Browse P2}
	       {Browse P3}
	       {Browse P4}
	       fun{$ Time}
		  if Kind == water orelse Kind == building then
		     realitem(kind:Kind p1:P1 p2:P2 p3:P3 p4:P4)
		  elseif Kind == road then
		     realitem(kind:Kind p1:P1 p2:P4)
		  else
		     pokeitem(kind:Kind position:P1)
		  end
	       end
	    [] primitive(kind:Kind)|T then
	       {Browse 'primitive|T'}
	       {Browse Kind}
	       fun{$ Time}
		  if Kind == water orelse Kind == building then
		     realitem(kind:Kind p1:P1 p2:P2 p3:P3 p4:P4)|{MakeItemFun T P1 P2 P3 P4}
		  elseif Kind == road then
		     realitem(kind:Kind p1:P1 p2:P4)|{MakeItemFun T P1 P2 P3 P4}
		  else
		     pokeitem(kind:Kind position:P1)|{MakeItemFun T P1 P2 P3 P4}
		  end
	       end
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
	 {MakeFunL Map.ru Map.pu}
      end
   end

   fun{CheckMap Map}
      false %% TODO complete here the function for the checking of the maps
   end
   
   {Projet.run MyFunction Map MaxTime Extensions CheckMap}
end
