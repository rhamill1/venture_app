# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Partner.create([
  {
    name: "John Doe",
    title: "Partner",
    twitter: "",
    linkedin: "",
    subtitle: "",
    bio: "",
    home_image: "",
    bio_image: "",
    background_image: "",
    story_image: "",
    story_image_text: "",
    signature_image: ""
  },
  {
    name: "Jane Domino",
    title: "Partner",
    twitter: "",
    linkedin: "",
    subtitle: "",
    bio: "",
    home_image: "",
    bio_image: "",
    background_image: "",
    story_image: "",
    story_image_text: "",
    signature_image: ""
  },
  {
    name: "Chris George",
    title: "CFO",
    twitter: "",
    linkedin: "",
    subtitle: "",
    bio: "",
    home_image: "",
    bio_image: "",
    background_image: "",
    story_image: "",
    story_image_text: "",
    signature_image: ""
  }
])

Company.create([
  {
    name: "Sellyou",
    logo_image: "",
    background_image: "",
    tag_line: "",
    linkedin: "",
    twitter: "",
    company_link: ""
  },
  {
    name: "MarketDriver",
    logo_image: "",
    background_image: "",
    tag_line: "",
    linkedin: "",
    twitter: "",
    company_link: ""
  },
  {
    name: "BestinClass",
    logo_image: "",
    background_image: "",
    tag_line: "",
    linkedin: "",
    twitter: "",
    company_link: ""
  }
])

Admin.create([
  {
    username: "",
    password_digest: ""
  }


])
