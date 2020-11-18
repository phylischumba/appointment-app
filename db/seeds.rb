# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appointment.destroy_all
Doctor.destroy_all
Doctor.create(name: 'Jeff Denlea',
             specialization: 'Surgeon',
             professional_statement: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
             img: 'https://images.pexels.com/photos/3714743/pexels-photo-3714743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
             practice_from: '20-12-2018')

Doctor.create(name: 'Jeff Denlea',
             specialization: 'Surgeon',
             professional_statement: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
             img: 'https://images.pexels.com/photos/3714743/pexels-photo-3714743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
             practice_from: '20-12-2018')

Doctor.create(name: 'Jeff Denlea meme',
             specialization: 'Surgeon',
             professional_statement: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
             img: 'https://images.pexels.com/photos/3714743/pexels-photo-3714743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
             practice_from: '20-12-2018')


Appointment.create( location: 'Mombasa',
                    doctor_id: 1,
                    created_at: '2020-06-08 16:51:35',
                    updated_at: '2020-06-08 16:51:35',
                    user_id: 1,
                    date: '2020-07-05',
                    time: '15:00:00',
)

Appointment.create( location: 'Nairobi',
                    doctor_id: 1,
                    created_at: '2020-06-08 16:51:35',
                    updated_at: '2020-06-08 16:51:35',
                    user_id: 1,
                    date: '2020-07-05',
                    time: '15:00:00',
)

Appointment.create( location: 'Eldoret',
                    doctor_id: 1,
                    created_at: '2020-06-08 16:51:35',
                    updated_at: '2020-06-08 16:51:35',
                    user_id: 1,
                    date: '2020-07-05',
                    time: '15:00:00',
)
