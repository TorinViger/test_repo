(define (domain river)
  (:requirements :typing :strips)
  (:predicates (on-near-bank) (on-far-bank) (on-island) (alive))
  (:action traverse-rocks
           :precondition (and (on-near-bank))
           :effect (and (not (on-near-bank)) (on-island)))
  (:action swim-river
           :precondition (and (on-near-bank))
           :effect (and (not (on-near-bank)) (on-far-bank) (not (alive))))
  (:action swim-island
           :precondition (and (on-island))
           :effect (and (not (on-island)) (on-far-bank))))
