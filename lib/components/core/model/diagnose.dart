import 'package:flutter/material.dart';

class AILMENT {
  int id;
  String ailmentName;
  String prevention;
  String dosage;
  String causeName;
  String treatment;

  AILMENT(
      {this.id,
      this.ailmentName,
      this.causeName,
      this.prevention,
      this.dosage,
      this.treatment});
}

class SYMPTOM {
  int id;
  String symptomsName;
  double weight;
  int ailmentid;

  SYMPTOM({this.id, this.symptomsName, this.weight, this.ailmentid});
}

class Answer {
  int symptomId;
  int ailmentId;
  bool answer;
  double weight;
  String question;
  Answer(
      {this.symptomId,
      this.ailmentId,
      this.answer,
      this.weight,
      @required this.question});
}

List<AILMENT> ailmentItems = [
  AILMENT(
      id: 1,
      ailmentName: "ASTHMA",
      dosage: "1 to 2 puffs every 4 to 6 hours OR 2.5mg nebulized TID to QID",
      prevention: "Early treatment of any chest infection can help.",
      causeName: "Allergy; idiophatic(unknow cause).",
      treatment:
          "Inhalers;Aminophine;Ventolin Tablet; Treat any underline infection with appropriate antibiotics."),
  AILMENT(
      id: 2,
      ailmentName: "CHOLERA",
      dosage:
          "12 years old, Doxycyline 2-4mg/kg \n >=12years old,Adults And Pregnate woman should take Doxycyline 300mg(Single Dose)",
      prevention:
          "Clean and wash hands after using tiolet: Boil drinking water.",
      causeName: "Bacteria:Cholera Vibro",
      treatment:
          "Salt and Water Solution; Hospital Admission;Treatcycline capsules."),
  AILMENT(
      id: 3,
      ailmentName: "Diabetes Mellitus",
      treatment: "Reduce carbohydrate intake;Exercise Also see a doctor.",
      prevention: "Weight Control Exercise and Regular Medical Checkup",
      causeName: "Disease of pancreas leading to reduced insulin production.",
      dosage:
          "Glucophage 500mg BID OR 850mg Daily, Tolinase, 100 to 250mg daily with the first meal of the day."),
  AILMENT(id: 4,
      ailmentName: "Ear Discharge",
      treatment: "Antibiotics like Ampiclox, \n ciproxin,paractamol, vitamin c, clean of the ear with swab,\n  also see a doctor.",
      prevention: "Avoid pricking your ear, general cleanliness of the body",
      causeName: "Bacterial infection",
      dosage:
      "Use amoxicillin for 3-5."),
  AILMENT(id: 5,
      ailmentName: "Malaria fever",
      treatment: " Chloroquine or artesunate tablet, paracetamol",
      prevention: "Use of mosquito nets, avoid open drains, cutting of surrounding bush.",
      causeName: "Bite by female anopheles mosquito",
      dosage:
      "Artemether lumefantrine 20mg/120mg 35kg or greater, \n administer 24 tables over 3 days, \n use 8 hourly in the morning and evening"),
  AILMENT(id: 6,
      ailmentName: "Tuberculosis",
      treatment: " Strong antibiotics e.g Rifanpicin, \n INH, Streptomycn, also see a doctor.",
      prevention: "Well ventilated house, avoid overcrowding, \n good and balanced feeding.",
      causeName: "Bacteria tubercule bacilli",
      dosage:
      "DOR and RPV 5mg/kg (usual dose 300mg) \n pyrazinamide( weighing 4055kg, 1,000mg(18.2 – 25.0mg/kg"),
  AILMENT(id: 7,
      ailmentName: "Typhoid Fever ",
      treatment: " Augumentin ciproxin or similar antibiotics, paracetamol.",
      prevention: "Clean and wash hands after using toilet,\n boil drinking water.",
      causeName: "Bacteria tubercule bacilli",
      dosage:
      "Ceftriaxone 75mg/kg to children, \n 4g to adults for 5 days.\n Cholrampheni col 60mg/kg/day to complete all in 14 days "),
  AILMENT(id: 8,
      ailmentName: "Urinary Tract Infection",
      treatment: " Antibiotics e.g septrin, ampiclox,\n Augumentin, amoxyl, paracetamol, vitamin .",
      prevention: "Use of clean toilets.",
      causeName: "Bacterial infection e.g E. coil, streptococcus",
      dosage:
      "Amoxicillin (3g)  OR \n Single dosage of sulfamethoxame-trimethoprim \n (two or three double strength tablets)"),
];

List<SYMPTOM> symptomsItems = [
  SYMPTOM(id: 1, symptomsName: "Difficulty in breathing in", weight: 1.00, ailmentid: 1),
  SYMPTOM(id: 2, symptomsName: "Flaring of the nose", weight: 1.00, ailmentid: 1),
  SYMPTOM(id: 3, symptomsName: "Dry Cough", weight: 0.70, ailmentid: 1),
  SYMPTOM(id: 4, symptomsName: "Chest Pain", weight: 0.80, ailmentid: 1),
  SYMPTOM(id: 5, symptomsName: "Frequent Stooling", weight: 1.00, ailmentid: 2),
  SYMPTOM(id: 6, symptomsName: "Watery Stool", weight: 1.00, ailmentid: 2),
  SYMPTOM(id: 7, symptomsName: "Loss of Consciousness", weight: 0.90, ailmentid: 2),
  SYMPTOM(id: 8, symptomsName: "Frequent Urination", weight: 1.00, ailmentid: 3),
  SYMPTOM(id: 9, symptomsName: "Excessive thirst", weight: 1.00, ailmentid: 3),
  SYMPTOM(id: 10, symptomsName: "Excessive water intake", weight: 1.00, ailmentid: 3),
  SYMPTOM(id: 11, symptomsName: "Weight loss", weight: 0.85, ailmentid: 3),
  SYMPTOM(id: 12, symptomsName: "Numbness", weight: 0.60, ailmentid: 3),
  SYMPTOM(id: 13, symptomsName: "Ants Around Urine", weight: 0.70, ailmentid: 3),
  SYMPTOM(id: 14, symptomsName: "Sugary Sweat", weight: 0.70, ailmentid: 3),
  SYMPTOM(id: 15, symptomsName: "Ear pain", weight: 1.00, ailmentid: 4),
  SYMPTOM(id: 16, symptomsName: "Loss of hearing", weight: 0.50, ailmentid: 4),
  SYMPTOM(id: 17, symptomsName: "pus from ear", weight: 1.00, ailmentid: 4),
  SYMPTOM(id: 18, symptomsName: "Fever(high temperature)", weight: 1.00, ailmentid: 5),
  SYMPTOM(id: 19, symptomsName: "Headache", weight: 0.80, ailmentid: 5),
  SYMPTOM(id: 20, symptomsName: "General body pains", weight: 0.75, ailmentid: 5),
  SYMPTOM(id: 21, symptomsName: " general body weakness", weight: 0.75, ailmentid: 5),
  SYMPTOM(id: 22, symptomsName: "Loss of appetite", weight: 0.80, ailmentid: 5),
  SYMPTOM(id: 23, symptomsName: "Nausea", weight: 0.75, ailmentid: 5),
  SYMPTOM(id: 24, symptomsName: "Prolonged cough more than 3 weeks old", weight: 0.90, ailmentid: 6),
  SYMPTOM(id: 25, symptomsName: "Night sweat ", weight: 0.80, ailmentid: 6),
  SYMPTOM(id: 26, symptomsName: "bloody sputum ", weight: 0.80, ailmentid: 6),
  SYMPTOM(id: 27, symptomsName: "Loss of appetite ", weight: 0.80, ailmentid: 6),
  SYMPTOM(id: 28, symptomsName: "general body weakness ", weight: 0.80, ailmentid: 6),
  SYMPTOM(id: 29, symptomsName: "Prolonged fever ", weight: 1.00, ailmentid: 7),
  SYMPTOM(id: 30, symptomsName: "general abdominal pain ", weight: 0.90, ailmentid: 7),
  SYMPTOM(id: 31, symptomsName: "headache ", weight: 0.95, ailmentid: 7),
  SYMPTOM(id: 32, symptomsName: "vomiting ", weight: 0.50, ailmentid: 7),
  SYMPTOM(id: 33, symptomsName: "Painful urination", weight: 1.00, ailmentid: 7),
  SYMPTOM(id: 34, symptomsName: "frequent urination", weight: 1.00, ailmentid: 8),
  SYMPTOM(id: 35, symptomsName: "fever (high temperature)  ", weight: 0.80, ailmentid: 8),
  SYMPTOM(id: 36, symptomsName: "Lower abdominal pain", weight: 1.00, ailmentid: 8),
  SYMPTOM(id: 37, symptomsName: "pressed to urinate ", weight: 1.00, ailmentid: 8),
  SYMPTOM(id: 38, symptomsName: "Nausea", weight: 0.80, ailmentid: 8),
  SYMPTOM(id: 39, symptomsName: "Vomiting", weight: 0.50, ailmentid: 8),
];

List<String> healthTips = [
  "Eat a variety of foods,",
  "Base your diet on plenty of foods rich in carbohydrates.",
  "Replace saturated with unsaturated fat.",
  "Enjoy plenty of fruits and vegetables.",
  "Reduce salt and sugar intake.",
  "Eat regularly, control the portion size.",
  "Drink plenty of fluids.",
  "Maintain a healthy body weight.",
  "Don’t drink sugar calories",
  "Eat nuts regularly",
  "Avoid processed junk food (eat real food instead)",
  "Don’t fear coffee",
  "Eat fatty fish",
  "Get enough sleep",
  "Take care of your gut health with probiotics and fiber",
  "Drink some water, especially before meals",
  "Don’t overcook or burn your meat",
  "Avoid bright lights before sleep.",
  "Take vitamin D3 if you don’t get much sun exposure",
  "Eat vegetables and fruits",
  " Make sure to eat enough protein",
  "Do some cardio",
  "Don’t smoke or do drugs, and only drink in moderation.",
  " Use extra virgin olive oil",
  " Minimize your sugar intake",
  "Don’t eat a lot of refined carbs",
  "Don’t fear saturated fat",
  "Lift heavy things",
  "Avoid artificial trans fats",
  "Use plenty of herbs and spices",
  "Take care of your relationships.",
  "Track your food intake every now and then.",
  "If you have excess belly fat, get rid of it.",
  "Don’t go on a diet.",
  "Eat eggs, yolk and all."
];
