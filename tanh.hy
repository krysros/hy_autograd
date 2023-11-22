(import autograd.numpy :as np)
(import autograd [elementwise_grad :as egrad])
(import matplotlib.pyplot :as plt)

(defn tanh [x] (/ (- 1.0 (np.exp (- x))) (+ 1.0 (np.exp (- x)))))

(setv x (np.linspace -7 7 200))

(plt.plot
  x (tanh x)
  x ((egrad tanh) x)                                      ; first derivative
  x ((egrad(egrad tanh)) x)                               ; second derivative
  x ((egrad(egrad(egrad tanh))) x)                        ; third derivative
  x ((egrad(egrad(egrad(egrad tanh)))) x)                 ; fourth derivative
  x ((egrad(egrad(egrad(egrad(egrad tanh))))) x)          ; fifth derivative
  x ((egrad(egrad(egrad(egrad(egrad(egrad tanh)))))) x))  ; sixth derivative

(plt.savefig "tanh.png")
