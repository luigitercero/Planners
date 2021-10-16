(define (problem moveAmbulance)
    (:domain customer)
    (:objects
    a1  - ambulance 
    l4 l3 l2 l1  - location
    p1 p2 - patient
    h1  - hospital
    )

    (:init
        (hospital_locate h1 l1)
        (ambulance_locate a1 l1)
        (patient_locate p1 l4)
        (patient_locate p2 l3)
        (empty_ambulance a1)
        (goto l1 l2) 
        (goto l2 l3) 
        (goto l3 l4)


    )
    (:goal
        (and (attend_patient h1 p1) (attend_patient h1 p2) 
            (attend_patient h2 p3) (attend_patient h2 p4) 
            (attend_patient h2 p5))
        
    )
)