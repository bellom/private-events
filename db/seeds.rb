# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Bello")
user2 = User.create(name: "Darshan")
user3 = User.create(name: "Bello_the_second")
user4 = User.create(name: "Darshan_the_second")

event1 = Event.create(name: "Grand event", desc: "The greatest event ever", date: Date.new(2020,1,1), creator_id: user1.id)
event2 = user2.created_events.build(name: "Second Grand event", desc: "The second greatest event ever", date: Date.new(2021,1,1))
event2.save
event3 = user3.created_events.build(name: "Old Grand event", desc: "The oldest event ever", date: Date.new(1000,1,1))
event3.save
event4 = user4.created_events.build(name: "Second old Grand event", desc: "The second oldest event ever", date: Date.new(2000,1,1))
event4.save

# Event 1
EventAttendance.create(attendee_id: user2.id, eventAttended_id: event1.id)
EventAttendance.create(attendee_id: user3.id, eventAttended_id: event1.id)
EventAttendance.create(attendee_id: user4.id, eventAttended_id: event1.id)


# Event 2
EventAttendance.create(attendee_id: user1.id, eventAttended_id: event2.id)
EventAttendance.create(attendee_id: user3.id, eventAttended_id: event2.id)
EventAttendance.create(attendee_id: user4.id, eventAttended_id: event2.id)

# Event 3
EventAttendance.create(attendee_id: user1.id, eventAttended_id: event3.id)
EventAttendance.create(attendee_id: user2.id, eventAttended_id: event3.id)
EventAttendance.create(attendee_id: user4.id, eventAttended_id: event3.id)


# Event 4
EventAttendance.create(attendee_id: user1.id, eventAttended_id: event4.id)
EventAttendance.create(attendee_id: user2.id, eventAttended_id: event4.id)
EventAttendance.create(attendee_id: user3.id, eventAttended_id: event4.id)