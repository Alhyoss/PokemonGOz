%====INFORMATION====%
% LFSAB1402 Projet 2016
% Nomas : 34261300-NOMA2
% Noms : (Lardinois,Simon)-(Harper,Igor)
%====MODULELINK====%
declare
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
   Map = map(ru: %% Real Universe %%
	     translate(
		dx: 100
		dy: 100
		1:
		   scale(
		      rx: 100
		      ry: 100
		      1:
			 primitive(kind: water)
		      |nil
		      )
		|nil
		)
	     |nil

	     pu: %% Pokemon Universe %%
	     translate(
		dx: 200
		dy: 200
		1:
		   primitive(kind: pokemon)
		|nil
		)
	     |nil
	    )

   fun{MyFunction Map}
      nil %% TODO complete your function here
   end

   fun{CheckMap Map}
      false %% TODO complete here the function for the checking of the maps
   end

   {Projet.run MyFunction Map MaxTime Extensions CheckMap}
end
