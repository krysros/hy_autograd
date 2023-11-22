(import autograd [grad :as ∂])
(defn f [x y] (+ (** x 2) (** y 3)))
(setv  dx 0  dy 1)
(print ((∂ f dx) 1. 2.))
(print ((∂ f dy) 1. 2.))