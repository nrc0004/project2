Program.destroy_all
Exercise.destroy_all

legday= Program.create( name:"Leg Day", details: "program for legs")
armday= Program.create( name:"Leg Day", details: "program for arms")
fullbody= Program.create( name:"Leg Day", details: "program for fullbody")

legday.exercises.create(name: "Deadlift", weight: 150, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")
legday.exercises.create(name: "Squats", weight: 150, reps: 15, sets:3, photo_url: "",photo_url: "", photo_url: "")
legday.exercises.create(name: "Romanian Deadlifts", weight: 80, reps: 15, sets:3, photo_url: "",photo_url: "", photo_url: "")
legday.exercises.create(name: "Leg Press", weight: 180, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")
legday.exercises.create(name: "Weigted Lunges", weight: 30, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")

armday.exercises.create(name: "Bicep Curls", weight: 15, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")
armday.exercises.create(name: "Incline Row", weight: 25, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")
armday.exercises.create(name: "Lateral Arm Raise", weight: 15, reps: 15, sets:3, photo_url: "",photo_url: "", photo_url: "")
armday.exercises.create(name: "Benchpress", weight: 45, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")
armday.exercises.create(name: "Overhead Press", weight: 40, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")

fullbody.exercises.create(name: "Lateral Arm Raise", weight: 15, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")
fullbody.exercises.create(name: "Deadlift", weight: 150, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")
fullbody.exercises.create(name: "Incline Row", weight: 25, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")
fullbody.exercises.create(name: "Bicep Curls", weight: 15, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")
fullbody.exercises.create(name: "Squats", weight: 150, reps: 15, sets: 3, photo_url: "",photo_url: "", photo_url: "")
