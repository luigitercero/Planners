(define (domain customer)

    (:requirements
        :typing
    )

    (:types
        location
        ambulance
        patient
        hospital
    )

    (:predicates
    (hospital_locate ?h - hospital ?l - location)
    (patient_locate ?p - patient ?l - location)
    (ambulance_locate   ?a - ambulance ?l1 - location)
    (goto  ?l1 - location ?l2 - location)
    (empty_ambulance ?a - ambulance)
    (carry ?a - ambulance ?p - patient)
    (attend_patient ?h - hospital ?p - patient)
    
    
    )

    (:action move
        :parameters (?a - ambulance ?l1 - location ?l2 - location)
        :precondition (and (ambulance_locate ?a ?l1) (goto ?l1 ?l2))
        :effect (and  (not (ambulance_locate ?a ?l1))  (ambulance_locate ?a ?l2) (goto ?l2 ?l1))
    )
    
    (:action get_in
        :parameters (?a - ambulance ?p - patient ?l - location)
        :precondition (and (empty_ambulance ?a) (patient_locate ?p ?l ) (ambulance_locate ?a ?l))
        :effect (and  (not (empty_ambulance ?a))  (carry ?a ?p) (not (patient_locate ?p ?l )))
    )
    
    (:action get_out
        :parameters (?a - ambulance ?p - patient ?l - location ?h - hospital)
        :precondition (and (carry ?a ?p)  (ambulance_locate ?a ?l) (hospital_locate ?h ?l))
        :effect (and (not (carry ?a ?p)) (attend_patient ?h ?p) (empty_ambulance ?a))
    )
    
    
)
