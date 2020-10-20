# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Application.destroy_all
Interview.destroy_all
Reccomendation.destroy_all

user1 = User.create(name: 'Kelsey Creehan', email: 'kelsey123@kelsey.com', password: 'apple')

application1 = Application.create(company: 'Google', position: 'Junior Dev', description: "Google's software engineers develop the next-generation technologies that change how billions of users connect, explore, and interact with information and one another. Our products need to handle information at massive scale, and extend well beyond web search. We're looking for engineers who bring fresh ideas from all areas, including information retrieval, distributed computing, large-scale system design, networking and data storage, security, artificial intelligence, natural language processing, UI design and mobile; the list goes on and is growing every day. As a software engineer, you will work on a specific project critical to Google’s needs with opportunities to switch teams and projects as you and our fast-paced business grow and evolve. We need our engineers to be versatile, display leadership qualities and be enthusiastic to take on new problems across the full-stack as we continue to push technology forward.", url: 'google.com', status: 'In Progress', user_id: user1.id)

application2 = Application.create(company: 'Amazon', position: 'Software Development Engineer', description: "Amazon External Security Services (ESS) is seeking Software Development Engineers for their offices in Denver, CO and Seattle, WA as well as Herndon and Arlington, VA. ESS provides customers services designed around Amazon’s internal security posture to improve their security experience. GuardDuty is a cloud intrusion detection service that detects unauthorized, malicious, or anomalous activity in a customer’s AWS environment. Macie identifies security risks in a customer’s S3 and DDB configuration. Inspector provides an overall assessment of the security posture of the system. Detective uses log data from AWS resources to build a linked set of data that enables analysts to conduct faster and more efficient security investigations. Security Hub generate a single dashboard view of current findings and recommendations from across Inspector, Macie, and GuardDuty.", url: 'amazon.com', status: 'Submitted', user_id: user1.id)

application3 = Application.create(company: 'Uber', position: 'Full-Stack Software Engineer', description: "The team develops the tooling, algorithmic automation, and systems to bring human and machine intelligence together to build the world's best datasets for developing autonomous vehicles. We are obsessed with building highly usable tools to examine and annotate complex data from different sensors such as lidar, radar, and cameras. You will work with others to develop and improve the core tooling by seeking opportunities for increased usability and areas in which we can apply recent computer vision techniques to aid in the creation of and QA of labeled datasets.", url: 'uberjobs.com', status: 'Recieved Offer', user_id: user1.id)

application4 = Application.create(
  company: 'Microsoft', 
  position: 'Software Engineer', 
  description: "Software engineers (SWEs) work with teammates to solve problems and build innovative software solutions. You are passionate about customers and product quality, and you provide technical guidance to Program Managers as they consider user needs and product requirements. You will also be expected to demonstrate an ability to learn and adopt relevant new technologies, tools, methods and processes to leverage in your solutions. As a SWE, you are dedicated to building software to empower every person and organization on the planet to achieve more.", 
  url: 'microsoftjobs.com', 
  status: 'In Progress', 
  user_id: user1.id
)

interview1 = Interview.create(date: 2020 - 11 - 14, time: '8:00a.m.', location: 'Zoom', application: application1)
interview2 = Interview.create(date: 2020 - 11 - 16, time: '10:00a.m.', location: 'Amazon Denver Office', application: application2)
interview3 = Interview.create(date: 2020 - 11 - 18, time: '12:00p.m.', location: 'Uber Offices Downtown', application: application3)
interview4 = Interview.create(date: 2020 - 12 - 15, time: '8:00a.m.', location: 'Zoom', application: application1)
interview5 = Interview.create(date: 2020 - 11 - 23, time: '11:00a.m.', location: 'Skype', application: application4)
