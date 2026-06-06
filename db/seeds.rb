# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

testimonials = [
  {
    author_name: "Alicia Aparisi Escrihuela",
    role: "Paciente",
    content: "Llegué a La Voz de Marta por recomendación de mi otorrino para realizar una valoración del frenillo y no puedo estar más contenta. Me alegra saber que todo lo que me enseña me está ayudando y además me siento muy acogida en la clínica."
  },
  {
    author_name: "Hiba Danine Belfquih",
    role: "Madre de paciente",
    content: "Mi príncipe de 6 años lleva más o menos 2 meses yendo a sesiones con Marta. Desde la primera sesión se nota su profesionalidad, su empatía y su dedicación al trabajo. Siempre después de cada sesión me dedica tiempo para explicarme cómo ha ido. Me encanta su metodología de trabajo."
  },
  {
    author_name: "Jonas Bastaros",
    role: "Cantante de flamenco",
    content: "Soy cantante de flamenco, acudí a Marta por una disfonía y gracias a sus sesiones puedo mantener mi voz en los conciertos. Servicios de diez y el trato con el cliente excelente, un 10/10. Lo recomiendo sin duda."
  },
  {
    author_name: "Celia",
    role: "Maestra de primaria",
    content: "Soy maestra de primaria y tengo nódulos. He empezado a tratármelos con Marta y la verdad que muy bien. Es una gran profesional y sabe muy bien lo que hace. Su trabajo es excelente. Estoy muy contenta de que me trate ella."
  },
  {
    author_name: "Carolina Herráez",
    role: "Paciente",
    content: "Es una gran profesional y de verdad que estoy encantada con ella."
  },
  {
    author_name: "Rosa Capella",
    role: "Paciente",
    content: "Muchas gracias Marta por como eres."
  }
]

testimonials.each do |attrs|
  Testimonial.find_or_create_by!(author_name: attrs[:author_name]) do |t|
    t.role = attrs[:role]
    t.content = attrs[:content]
  end
end
