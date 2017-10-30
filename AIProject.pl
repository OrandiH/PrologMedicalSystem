#%Facts
symptom(chills).
symptom(fever).
symptom(coughing).
symptom(sorethroat).
symptom(stuffy).
symptom(bodyaches).
symptom(fatigue).
symptom(diarrhea).
symptom(nausea).
symptom(vomitting).
disease(h1n1).
prevention(flushot).
prevention(washhands).
prevention(touchingsurfaces).

menu:-
    write('Option 1 -> Survey'),nl,write('Option 2 -> Diagnosis'),nl,write('Option 3 -> Help'),nl,
    write('Option 4 -> Exit'),nl,
    write('Enter your option: '),nl,read(Opt),
    (Opt == 1 -> survey;Opt == 2 -> get_symptoms;Opt == 3 -> help;
    Opt == 4 -> write('Thanks for using our system!');
    nl,write('Invalid option!'),nl, menu).

survey:-
    write('What is your name?'),nl,read(Name),
    write('How old are you?'),nl,read(Age),
    write('Gender M/F?'),nl,read(Gender),
    write('Provide body temperature in Celsius'),nl,read(Temp),
    write(Name),nl,write(Age),nl,write(Gender),nl,write(Temp),nl,menu.

get_symptoms:-
    write('Do you feel nausea?'),nl,read(Symptom),
    write('Do you have chills?'),nl,read(Symptom1),
    write('Do you have a fever?'),nl,read(Symptom2),
    write('Do you have coughing?'),nl,read(Symptom3),
    write('Do you have a sorethoart?'),nl,read(Symptom4),
    write('Do you feel stuffy?'),nl,read(Symptom5),
    write('Do you feel bodyaches?'),nl,read(Symptom6),
    write('Do you feel fatigue?'),nl,read(Symptom7),
    write('Are you experiencing diarrhea?'),nl,read(Symptom8),
    write('Are you vomitting?'),nl,read(Symptom9),
    diagnosis(Symptom,Symptom1,Symptom2,Symptom3,Symptom4,Symptom5,Symptom6,Symptom7,Symptom8,Symptom9).

diagnosis(Symptom,Symptom1,Symptom2,Symptom3,Symptom4,Symptom5,Symptom6,Symptom7,Symptom8,Symptom9):-
    (Symptom == 'y',Symptom1 == 'y',Symptom2 == 'y',Symptom3 == 'y',
    Symptom4 == 'y',Symptom5 == 'y',Symptom6 == 'y',Symptom7 == 'y',
    Symptom8 == 'y',Symptom9 == 'y' -> write('You are at risk for H1N1!'),menu);
    write('You are not at risk for H1N1'),nl,menu.

help:- write('Select Diagnosis to know if you at risk for H1N1, 
select survey to provide our system with user information,Exit to quit expert system!'),nl,menu.
