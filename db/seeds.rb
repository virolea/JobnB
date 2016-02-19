# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.destroy_all
# Post.destroy_all

posts_attributes = [
  {
    title: "Ingénieur Réseau (H)",
    description:"Nous avons à disposition un ingénieur hautement qualifié et expérimenté dans le domaine des réseaux.",
    date_begin: DateTime.now,
    date_end: DateTime.now + 100,
    employee_name: "Jean-Claude Bartoli",
    employee_skill: "Réseau",
    user_id: 1,
    address: "16 Villa Gaudelet, Paris"
  },
  {
    title: "Tourneur-Fraiseur (H)",
    description: "Nous sommes une PME d'une cinquantaine de salariés, et avons un excellent élément disponible pour cause de baisse de l'activité.",
    date_begin: DateTime.now + 1,
    date_end: DateTime.now + 75,
    employee_name: "employee name test",
    employee_skill: "Tourneur-Fraiseur",
    user_id: 1,
    address: "16 Villa Gaudelet, Paris"
  },
  {
    title: "Accompagnatrice (GFE)",
    description: "Habitués des contrats avec les entreprises du CAC 40, nous savons allier professionnalisme, discrétion totale et expertise dans notre domaine. Nos accompagnatrices sont douées d'un relationnel exceptionnel et sauront répondre à toute vos attentes.",
    date_begin: DateTime.now + 2,
    date_end: DateTime.now + 120,
    employee_name: "Irma Buduc",
    employee_skill: "Accompagnatrice",
    user_id: 1,
    address: "25 rue de Douai, Paris"
  },
  {
    title: "Conductrice Camion Benne",
    description: "Vous cherchez une avaleuse de kilometres auquel la boîte de vitesse n'a plus de secret? Nous vous proposons nos meilleures conductrices de Camion. Tenaces et tatillonnes elles seront mener la marchandise en temps et en heure.",
    date_begin: DateTime.now + 3,
    date_end: DateTime.now + 130,
    employee_name: "Marjorie Dulys",
    employee_skill: "Chauffeur",
    user_id: 1,
    address: "25 rue de Douai, Paris"
  },
  {
    title: "Ingénieur",
    description: "On propose cet ingénieur",
    date_begin: DateTime.now + 4,
    date_end: DateTime.now + 170,
    employee_name: "Bastien Fréraud",
    employee_skill: "Batiment",
    user_id: 1,
    address: "25 rue de Douai, Paris"
  }
]
posts_attributes.each { |params| Post.create!(params) }











