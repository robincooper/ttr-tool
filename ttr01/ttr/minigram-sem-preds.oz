/*

    Copyright 2012 Robin Cooper

    This file is part of TTR Tools 0.1alpha.

    TTR Tools 0.1alpha is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    TTR Tools 0.1alpha is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with TTR Tools 0.1alpha.  If not, see <http://www.gnu.org/licenses/>.

*/



functor
import
   Abs at 'minigram-abs-preds.ozf'
export
   Pred Arity
   
define
   proc {Pred F}
      choice
	 {Abs.pred F}
      [] F = named
      [] F = eq
      [] F = male
      [] F = neuter
      end
      % choice
% 	 F = love
%       [] F = man
%       [] F = woman
%       end
   end
   fun {Arity F}
      case F
      of named then ['Ind' 'Name']
      [] eq then ['Ind' 'Ind']
      [] male then ['Ind']
      [] neuter then ['Ind']
      else {Abs.arity F}
      end
      % case F
%       of love then ['Ind' 'Ind']
%       [] man then ['Ind']
%       [] woman then ['Ind']
%       end
   end
   

end
