
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Application.destroy_all
Mission.destroy_all
Organization.destroy_all
User.destroy_all

puts "Creating default users..."

fatou = User.create!(
  email: "fatou.d@gmail.com",
  password: "azerty",
  first_name: "Fatou",
  last_name: "Diallo",
  phone_number: "0654567876",
  description: "J'ai 37 ans, trois enfants et je suis psychiatre au CHU de Nantes.
  Je suis passionnée par la Grèce antique et
  je souhaite donner quelques heures de mon temps pour donner des cours d'histoire-géo.",
  skills: "Diplomée du CHU de Nantes / Maîtrise de l'anglais, de l'espagnol et de l'arabe.
  Je suis patiente et empathique.",
  experiences: "Membre d'une association pour faire avancer la science depuis 2011.",
  picture: File.open(Rails.root.join("db/fixtures/users/fatou.jpg"))
)

binta = User.create!(
  email: "binta.diallo@gmail.com",
  password: "azerty",
  first_name: "Binta",
  last_name: "Diallo",
  phone_number: "0677779865",
  description: "Je suis très méticuleuse et organisée.
  Je viens de finir un master en Art Appliqué est
  c'est ma soeur Fatou qui m'a parlé de cette plateforme et c'est la 1ère fois
  que je participe à une action humanitaire. Jai envie d'animer un atelier dessin une fois par semaine.",
  skills: "Dessin, Peinture, Street Art, Logiciels de PAO.",
  experiences: "Baby-Sitter pendant 5 ans / prof d'anglais pour des collégiens.",
  picture: File.open(Rails.root.join("db/fixtures/users/binta.jpg"))
)

elena = User.create!(
  email: "elena.chavos@aol.com",
  password: "azerty",
  first_name: "Elena",
  last_name: "Chavos",
  phone_number: "0655323411",
  description: "J'ai 26 ans et je suis étudiante à la faculté de Droit de Nantes.
  Je viens de Colombie et je vis avec mon fiancé Thomas à Saint-Sébastien. Véhiculée, les déplacements
  à Nantes Centre ne sont pas un problème.
  Pour toutes questions relatives au juridique/droit, vous pouvez compter sur moi !",
  skills: "Spécialisée en Droit des Familles. Je parle anglais et espagnol.",
  experiences: "Stage de 6 mois au Barreau de Nantes.",
  picture: File.open(Rails.root.join("db/fixtures/users/elena.jpg"))
)

yulia = User.create!(
  email: "yulia_osipova@aol.com",
  password: "azerty",
  first_name: "Yulia",
  last_name: "Osipova",
  phone_number: "0627658398",
  description: "J'ai 31 ans, je suis russe et j'habite à Nantes depuis 2 ans
  Je suis Chef Cuisto à la Cigale et j'adore mon métier ! Je souhaite donner mon temps pour cuisiner pour les exilés.
  Mon patron est d'ailleurs d'accord pour faire des dons ponctuels.",
  skills: "Cuisine moléculaire/Cuisine Bistronomique",
  experiences: "Je me suis occupée d'enfants dans un orphelinat de ma ville natale
  et je gérais les repas pour 65 enfants.",
  picture: File.open(Rails.root.join("db/fixtures/users/yulia.jpg"))
)

romain = User.create!(
  email: "romain.pazo@gmail.com",
  password: "azerty",
  first_name: "Romain",
  last_name: "Pazo",
  phone_number: "0675410100",
  description: "J'ai 50 ans et je suis professeur de mathématique au Lycée Saint Stanislas.
  Je souhaite donner des cours de mathématique.",
  skills: "Agrégé en mathématique",
  experiences: "Professeur de mathématique (hypokhâgne)",
  picture: File.open(Rails.root.join("db/fixtures/users/romain.jpg"))
)

enzo = User.create!(
  email: "enzo.mathe@gmail.com",
  password: "azerty",
  first_name: "Enzo",
  last_name: "Mathé",
  phone_number: "0628880008",
  description: "Je suis spécialisé en architecture réseau et je travaille au Ministère
  des Affaires étrangères. Je suis passionné de moto.
  et je pars tous les week-ends faire des ballades
  au bord de la mer. Je n'ai pas beaucoup de temps, mais une à deux fois
  par mois, je voudrais animer des ateliers Initiation à l'informatique.",
  skills: "Architecture Réseau / Machine Learning",
  experiences: "Web Ninja depuis l'âge de 8 ans.",
  picture: File.open(Rails.root.join("db/fixtures/users/enzo.jpg"))
)

puts "Creating organizations..."

anade = Organization.create!(
  name: "ANADE - Association Nantaise d'Alphabétisation Des Etrangers",
  description: "Les cours du soir dispensés s'adressent aux adultes de toute âge et de toutes nationalités désireux d'apprendre ou de se perfectionner dans la pratique du français",
  email: "anade@sfr.fr",
  password: "azerty",
  phone_number: "07 61 47 72 65",
  kind: "Association",
  total_volunteers: 12,
  siren: "756 867 453",
  category: "Education & Jeunesse",
  website: "https://anadeasso.wordpress.com",
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter: "www.twitter.com",
  address: "42 rue des Hauts Pavés 44000 NANTES",
  creation_year: 1978,
  logo: "",
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

association_aurore = Organization.create!(
  name: "Association Aurore",
  description: "Créée en 1871, l’association Aurore héberge, soigne et accompagne plus de 37 000 personnes en situation de précarité ou d’exclusion vers une insertion sociale et professionnelle.
  Reconnue d’utilité publique depuis 1875, Aurore s’appuie sur son expérience pour proposer et expérimenter des formes innovantes de prises en charge, qui s’adaptent à l’évolution des phénomènes de précarité et d’exclusion.",
  email: "f.beliarde@aurore.asso.fr",
  password: "azerty",
  phone_number: "02 51 82 60 99",
  kind: "Association",
  total_volunteers: 2996,
  siren: "775 684 970",
  category: "Solidarité & Santé",
  website: "https://www.aurore.asso.fr",
  facebook: "www.facebook.com/associationaurore",
  linkedin: "https://fr.linkedin.com/company/association-aurore",
  twitter: "@AssoAurore",
  address: "29, allée de l'Indre, 44000 Nantes",
  creation_year: 1871,
  logo: File.open(Rails.root.join("db/fixtures/organizations/association_aurore.jpeg")),
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

cfda = Organization.create!(
  name: "CFDA Coordination Française pour le Droit d'Asile",
  description: "Née au début de l'année 2000 de la fusion de la Commission de
  Sauvegarde du droit d'Asile, de la Coordination Réfugiés et du Comité de liaison,
  qu'elle remplace, la CFDA rassemble une vingtaine d'organisations qui, en France,
  sont engagées dans la défense et la promotion du droit d'asile, en référence
  à la Déclaration Universelle des Droits de l'Homme et à la Convention de Genève
  sur les réfugiés ainsi que, notamment, à la Convention Internationale sur les
  Droits de l'Enfant et à la Convention Européenne de Sauvegarde des Droits de
  l'Homme et des Libertés Fondamentales.
  Dans ce cadre, la CFDA intervient dans le débat public sur les questions relatives
  à l'asile, en France et en Europe, et fait connaître ses positions et le fruit de
  es travaux auprès des administrations chargées de l'accueil et de la protection
  des demandeurs d'asile et des réfugiés. En 2001, la CFDA s'est dotée d'une charte
  t a adopté une plateforme de propositions : 10 conditions pour un réel droit
  d'asile en France.
  Depuis cette date, le droit d’asile en France a été profondément remanié, tant
  au niveau des procédures que des conditions d’accueil. Six ans après leur
  déclaration, les associations de la CFDA affirment que les mesures de contrôle
  des flux migratoires et le climat de suspicion entretenu à l’encontre des
  demandeurs d’asile sont les causes principales tant de la baisse du nombre de
  demandeurs d’asile et de réfugiés dans les pays industrialisés que de
  l’augmentation du nombre de ces demandeurs dans des pays de transit, notamment
  en Afrique du Nord, et de personnes déplacées dans leurs propres pays.
  Réaffirmant leur attachement au droit d'asile comme droit fondamental et à la
  Convention de Genève comme socle du droit pour le statut des réfugiés, les
  associations de la CFDA ont actualisé leur plateforme le 19 juin 2007 et
  présentent 10 conditions minimales pour que l'asile soit un droit réel.
  ",
  email: "cfda44@numericable.fr",
  password: "azerty",
  phone_number: "",
  kind: "Collectif",
  total_volunteers: 250,
  siren: "787 756 568",
  category: "Défense des droits et des intérêts",
  website: "http://cfda.rezo.net",
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter: "www.twitter.com",
  address: "36 quai de la fosse 44100 Nantes",
  creation_year: 2000,
  logo: File.open(Rails.root.join("db/fixtures/organizations/cfda.jpg")),
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

croix_rouge = Organization.create!(
  name: "Croix Rouge",
  description: "Dans la tradition du Mouvement Croix-Rouge, la Croix-Rouge
  française est d’abord une association de bénévoles. Elle est aussi devenue
  une entreprise non profit de services dans les secteurs humanitaire, sanitaire,
  ocial, médicosocial et de la formation. Pour mener à bien ses missions,
  cette association-entreprise à but non lucratif, compte sur son réseau de
  bénévoles et de salariés, qui agissent chaque jour selon un même principe
  inaltérable de solidarité, en privilégiant les actions de proximité qui
  apportent des réponses concrètes et durables.",
  email: "ul.nantes@croix-rouge.fr",
  password: "azerty",
  phone_number: "02 40 74 66 82",
  kind: "Association",
  total_volunteers: 58000,
  siren: "775 672 272",
  category: "Solidarité & Santé",
  website: "https://www.croix-rouge.fr",
  facebook: "https://fr-fr.facebook.com/fr.CroixRouge",
  linkedin: "https://fr.linkedin.com/company/croix-rouge-fran-aise",
  twitter: "https://twitter.com/croixrouge",
  address: "10, rue d'Athènes, 44300 Nantes",
  creation_year: "1859",
  logo: File.open(Rails.root.join("db/fixtures/organizations/croix_rouge.png")),
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

diaconat = Organization.create!(
  name: "Diaconat Protestant",
  description: "> Des chauffeurs / interprète de langue russe
  > Du matériel pour remplacer un ordinateur portable",
  email: "diaconat.nantes@gmail.com",
  password: "azerty",
  phone_number: "",
  kind: "Collectif",
  total_volunteers: 300,
  siren: "779 469 691",
  category: "Vie locale & citoyenne",
  website: "http://www.fep.asso.fr/membre/le-diaconat-protestant-de-nantes/",
  facebook: "https://www.facebook.com/FEPasso/",
  linkedin: "www.linkedin.com",
  twitter: "https://twitter.com/FeProtest",
  address: "15bis place Edouard Normand, 44000 Nantes",
  creation_year: 1984,
  logo: "",
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

emmaus = Organization.create!(
  name: "Emmaüs",
  description: "La Communauté Emmaüs 44 de Nantes est un lieu d’accueil, de vie,
  de travail et de solidarité pour les personnes en situation d’exclusion sociale.
  le est située à Bouguenais, au sud de Nantes. Créées sous l’impulsion de groupes
  de bénévoles, là où la misère criait, les communautés, aujourd’hui au nombre
  de 115, demeurent le reflet de cette indignation, de cette volonté de lutter
  contre l’injustice sociale.",
  email: "contact@emmaus44.fr",
  password: "azerty",
  phone_number: "02 40 75 63 36",
  kind: "Collectif",
  total_volunteers: 10000,
  siren: "776 756 780",
  category: "Défense des droits & des intérêts",
  website: "http://www.emmaus44.fr/nantes/la-communaute/",
  facebook: "https://fr-fr.facebook.com/emmausfrance/",
  linkedin: "https://fr.linkedin.com/company/emmaus",
  twitter: "https://twitter.com/croixrouge",
  address: "La Guilloterie Rue d'Emmaüs 44340 Bouguenais",
  creation_year: 1950,
  logo: File.open(Rails.root.join("db/fixtures/organizations/emmaus.png")),
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

fbna = Organization.create!(
  name: "FBNA - France Bénévolat Nantes Atlantique",
  description: "Association ressource, France Bénévolat Nantes Atlantique
  participe au développement de la vie associative et de l'engagement bénévole
  pour une citoyenneté active.
  ORIENTE et MET EN RELATION des associations et des bénévoles
  ACCOMPAGNE les associations dans la recherche et l'animation de leurs bénévoles
  VALORISE l'engagement bénévole et les ressources humaines bénévoles",
  email: "francebenevolat@yahoo.fr",
  password: "azerty",
  phone_number: "02 40 35 12 17",
  kind: "Association",
  total_volunteers: 1250,
  siren: "767 343 567",
  category: "Vie locale & citoyenne",
  website: "http://nantes.francebenevolat.org/",
  facebook: "https://www.facebook.com/France-B%C3%A9n%C3%A9volat-304694849663/",
  linkedin: "www.linkedin.com",
  twitter: "https://twitter.com/francebenevolat",
  address: "9 Place Mangin 44200 Nantes",
  creation_year: 1965,
  logo: File.open(Rails.root.join("db/fixtures/organizations/fbna.jpeg")),
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

gasprom = Organization.create!(
  name: "Gasprom",
  description: "Depuis 1970 l'association accueille et aide les travailleurs
  immigrés. L'association se bat : contre le racisme et les discriminations,
  qu'elles soient sociales, raciales ou sexistes. Pour la liberté de circulation
  et d'installation des personnes et des idées. Pour l'égalité des droits dans
  une société interculturelle. Pour l'élargissement de la citoyenneté à toutes
  et à tous, indépendamment de la nationalité de chacun(e).",
  email: "gasprom@nantes.fr",
  password: "azerty",
  phone_number: "",
  kind: "Association",
  total_volunteers: 150,
  siren: "773 564 344",
  category: "Défense des droits & des intérêts",
  website: "www.google.com",
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter: "www.twitter.com",
  address: "24 rue Fouré 44000 Nantes",
  creation_year: 1970,
  logo: "",
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

gref = Organization.create!(
  name: "GREF - Groupement des Educateurs sans Frontières",
  description: "NOS VALEURS
  Engagement bénévole de professionnels expérimentés en éducation et formation.
  Partage et solidarité ici et là-bas
  Échange d’expériences et de compétences
  Co construction de solutions pérennes

  NOS MISSIONS
  Accompagner les dynamiques locales et nationales dans la mise en œuvre de projets
  ducatifs, en réponse à la demande des acteurs de la société civile et/ou des
  institutions
  Trouver ensemble des solutions novatrices de développement en privilégiant la
  qualité, le genre, l’égalité
  Soutenir la langue française dans le respect de la diversité culturelle et
  linguistique
  Faciliter la mise en réseau des différents acteurs pour assurer efficacité et
  pérennité
  Développer l’éducation au développement et à la solidarité",
  email: "grefnantesfle@gmail.com",
  password: "azerty",
  phone_number: "06 88 21 81 65 - 02 40 73 94 00",
  kind: "Collectif",
  total_volunteers: 1500,
  siren: "786 765 777",
  category: "Education & Jeunesse",
  website: "http://www.gref.asso.fr",
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter: "www.twitter.com",
  address: "Rue meuris, Nantes",
  creation_year: 1980,
  logo: File.open(Rails.root.join("db/fixtures/organizations/gref.png")),
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

acceuil = Organization.create!(
  name: "L'Acceuil d'abord",
  description: "> Des logements mis à disposition gratuitement dans l’agglomération
   nantaise, du gros matériel ménager (frigo, machines à laver le linge…)
  > Des personnes pour accompagner les familles hébergées (compétences sociales,
  compétences linguistiques appréciées)
  > Des financements pour les fluides, et tous les frais afférents aux logements",
  email: "accueil.dabord@gmail.com",
  password: "azerty",
  phone_number: "07 57 51 21 87",
  kind: "Collectif",
  total_volunteers: 44,
  siren: "756 334 344",
  category: "Solidarité & Santé",
  website: "www.google.com",
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter: "www.twitter.com",
  address: "7 chemin de la Censive du Tertre 44300 Nantes",
  creation_year: 1987,
  logo: "",
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

pastorale = Organization.create!(
  name: "La Pastorale des Migrants",
  description: "une organisation œcuménique, créée il y a douze ans par des
  militants catholiques, protestants et orthodoxes. Leur but : aider les familles
  igrantes les plus démunies, et déboutées du droit d’asile, en leur trouvant
  d’abord un toit, puis en les aidant au niveau administratif pour s’intégrer
  au mieux dans la société française.
  Depuis sa création, l’association a accompagné efficacement des dizaines de
  familles afin qu’elles trouvent un nouveau départ.",
  email: "pastorale.migrants@nantes.cef.fr",
  password: "azerty",
  phone_number: "02 40 74 64 17 - 06 21 13 33 89",
  kind: "Collectif",
  total_volunteers: 20,
  siren: "765 345 654",
  category: "humanitaire & Solidarité Internationale",
  website: "www.google.com",
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter: "www.twitter.com",
  address: "43 Rue Gaston Turpin 44000 Nantes",
  creation_year: 2006,
  logo: "",
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

gout_des_autres = Organization.create!(
  name: "Le Goût des Autres",
  description: "L’association créée fin 2009 a pour objet la découverte, la
  connaissance, la diffusion des cultures étrangères à travers leurs pratiques
  culinaires.
  L’activité de l’association se déroule au domicile des particuliers, auprès des
  entres de loisirs, des maisons de quartiers, des comités d’entreprises et peut
  être associée au déroulement de tout évènement festif ou culturel.
  Pour permettre à des familles qui ont fui leur pays pour cause de conflits, de
  violences ou de menaces, de faciliter leur intégration dans notre région et les
  ccompagner dans ce sens ;
  Pour proposer un accès à l’emploi à des femmes étrangères rencontrant par
  ailleurs d’importantes difficultés dans le monde du travail ;
  Pour générer du revenu et de l’activité, véritable plus-value du projet à travers
  n mode de gestion participatif ;
  Pour mettre à profit l’échange de savoirs comme élément de reconnaissance sociale
  t culturelle ;
  Pour favoriser le lien intergénérationnel à travers la rencontre et le partage
  entre individus ;
  Pour encourager le développement des solidarités et l’établissement d’un mieux
  vivre ensemble.",
  email: "legoutdesautres@ml.free.fr",
  password: "azerty",
  phone_number: "06 08 16 52 61",
  kind: "Association",
  total_volunteers: 500,
  siren: "773 567 425",
  category: "Arts & Culturel",
  website: "http://www.legoutdesautres.org/",
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter: "www.twitter.com",
  address: "23, rue Henri Brunelière 44000 Nantes",
  creation_year: 2009,
  logo: "",
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

ligue_droits_de_lhomme = Organization.create!(
  name: "Ligue des Droits de l'Homme",
  description: "En 1898, des citoyens, révoltés par l’injustice dont était victime
  le Capitaine Dreyfus, décidaient de créer la Ligue française pour la défense
  des droits de l’homme et du citoyen. Ils s’engageaient alors à porter aide et
  assistance « à toute personne dont la liberté serait menacée ou dont le droit
  serait violé ». Cet engagement est toujours le nôtre. C’est avec la même
  exigence d’une lutte contre « toutes les formes d’intolérance et d’arbitraire »
  que nous voulons construire le mouvement civique de demain.",
  email: "ldh.nantes@orange.fr",
  password: "azerty",
  phone_number: "07 86 51 74 99",
  kind: "Collectif",
  total_volunteers: 150,
  siren: "775 345 245",
  category: "Défense des droits & des intérêts",
  website: "http://site.ldh-france.org/nantes/",
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter: "www.twitter.com",
  address: "4 Place de la Manu 44000 Nantes",
  creation_year: 1898,
  logo: "",
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

saint_jean = Organization.create!(
  name: "Logis St Jean",
  description: "Offrir un lieu de rencontres et accompagner les pesonnes isolées,
  demandeurs d'asile et déboutés du droit d'asile.",
  email: "logissaintjean@gmail.com",
  password: "azerty",
  phone_number: "02 49 44 36 91",
  kind: "Collectif",
  total_volunteers: 60,
  siren: "",
  category: "Solidarité & Santé",
  website: "www.google.com",
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter: "www.twitter.com",
  address: "11 Rue du Chapeau Rouge 44000 Nantes",
  creation_year: 2010,
  logo: "",
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

mrap = Organization.create!(
  name: "MRAP - Mouvement contre le racisme et pour l'amitié entre les peuples",
  description: "Association française non gouvernementale, créée en 1949 par
  d'anciens résistants et déportés de la Seconde Guerre mondiale, qui se définit c
  omme un moyen de revendication pour « l'égalité des droits entre tous les
  citoyens »",
  email: "mrapnantes@hotmail.com",
  password: "azerty",
  phone_number: "02 40 58 08 09",
  kind: "Collectif",
  total_volunteers: 1400,
  siren: "537 929 192",
  category: "Défense des droits & des intérêts",
  website: "http://mrap.fr/",
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter: "www.twitter.com",
  address: "11 rue de Prinquiau 44100 Nantes",
  creation_year: 1949,
  logo: File.open(Rails.root.join("db/fixtures/organizations/mrap.jpg")),
  photo_1: "",
  photo_2: "",
  photo_3: ""
)

medecins_du_monde = Organization.create!(
  name: "Médecins du Monde",
  description: "Présent en France et dans 80 pays, Médecins du Monde est un
  mouvement international indépendant de militants actifs qui soignent, témoignent
  et accompagnent le changement social. À partir de nos 388 programmes médicaux
  innovants et d’un plaidoyer basé sur des faits, nous mettons les personnes
  exclues et leurs communautés en capacité d’accéder à la santé tout en se battant
  pour un accès universel aux soins.​",
  email: "pays-de-la-loire@medecinsdumonde.net",
  password: "m",
  phone_number: "",
  kind: "Association",
  total_volunteers: 14000,
  siren: "305 009 102",
  category: "Solidarité & Santé",
  website: "https://www.medecinsdumonde.org/fr",
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter: "www.twitter.com",
  address: "33 Rue Fouré 44000 Nantes",
  creation_year: 1954,
  logo: File.open(Rails.root.join("db/fixtures/organizations/medecins_du_monde.png")),
  photo_1: "",
  photo_2: "",
  photo_3: ""
)
# "02 40 47 36 99"
# asamla = Organization.create!(
#   name: "ASAMLA - Santé Migrants de Loire-Atlantique"
#   description:
#   email: "hdivet@cg44.fr",
#   kind:
#   total_volunteers:
#   siren:
#   category:
#   website:
#   facebook:
#   linkedin:
#   twitter:
#   address: "49-51 Chaussée de la Madeleine 44000 Nantes",
#   creation_year:
#   logo:
#   photo_1:
#   photo_2:
#   photo_3:
# )
# "02 40 48 51 99"
# secours_catholique = Organization.create!(
#   name: "Secours Catholique",
#   description:
#   email: "loireatlantique@secours-catholique.org",
#   kind:
#   total_volunteers:
#   siren:
#   category:
#   website:
#   facebook:
#   linkedin:
#   twitter:
#   address: "1 Rue Lorette de la Refoulais 44000 Nantes",
#   creation_year:
#   logo:
#   photo_1:
#   photo_2:
#   photo_3:
# )
# "02 40 29 04 26"
# secours_pop = Organization.create!(
#   name:
#   description: "> Des chauffeurs-livreurs pour les denrées alimentaires",
#   email: "contact@spf44.org",
#   kind:
#   total_volunteers:
#   siren:
#   category:
#   website:
#   facebook:
#   linkedin:
#   twitter:
#   address: "163, rue Paul Bellamy 44000 Nantes",
#   creation_year:
#   logo:
#   photo_1:
#   photo_2:
#   photo_3:
# )
# "02 40 74 14 14 - 02 40 74 48 41"
# fraternité = Organization.create!(
#   name: "La Fraternité",
#   description:
#   email: "la-fraternite@wanadoo.fr",
#   kind:
#   total_volunteers:
#   siren:
#   category:
#   website:
#   facebook:
#   linkedin:
#   twitter:
#   address: "3 Rue Amiral Du Chaffault 44100 Nantes",
#   creation_year:
#   logo:
#   photo_1:
#   photo_2:
#   photo_3:
# )
# "02 40 69 37 63"
# resf = Organization.create!(
#   name: "RESF - Collectif Enfants Etrangers",
#   description:
#   email: "ceecs44@gmail.com",
#   kind:
#   total_volunteers:
#   siren:
#   category:
#   website:
#   facebook:
#   linkedin:
#   twitter:
#   address: "6 place de la Manufacture 44000 Nantes",
#   creation_year:
#   logo:
#   photo_1:
#   photo_2:
#   photo_3:
# )
# "06 85 02 01 70 - 02 40 06 72 55"

puts "Creating missions..."

vetements = Mission.create!({
  title: "Collecte de vêtements",
  category: "Collecte",
  address: "94 rue des hauts pavés, 44000 Nantes",
  volunteers_needed: 0,
  description: "En partenariat avec des écoles (Algérie, Egypte...) Orient Events recherche une personne en charge d'organiser une collecte de vêtements pour les enfants, livres, fournitures scolaires. Le bénévole sera en charge de - Rédaction du projet, - Recherche de partenaires (écoles, compagnies aériennes...) - Organiser la collecte - Trouver des partenaires afin d'acheminer les objets ",
  starting_at: "2018/10/17 14:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/17 13:00:00",
  organization: anade
})

nourriture = Mission.create!({
  title: "Collecte de nouriture",
  category: "Collecte",
  address: "94 rue des hauts pavés, 44000 Nantes",
  volunteers_needed: 0,
  description: "En partenariat avec des écoles (Algérie, Egypte...) Orient Events recherche une personne en charge d'organiser une collecte de vêtements pour les enfants, livres, fournitures scolaires. Le bénévole sera en charge de - Rédaction du projet, - Recherche de partenaires (écoles, compagnies aériennes...) - Organiser la collecte - Trouver des partenaires afin d'acheminer les objets ",
  skills_needed: "",
  starting_at: "2018/10/17 14:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/17 13:00:00",
  organization: association_aurore
})

cours_de_français = Mission.create!({
  title: "Cours de français",
  category: "Enseignement",
  address: "15 rue Guépin, 44000 Nantes",
  volunteers_needed: 14,
  description: "Rejoignez notre association du 6eme arrondissement de Paris en tant que formateur PSC 1 (Prévention et secours civiques de niveau 1) Pourquoi former les français aux gestes qui sauvent ? En France, plusieurs milliers de personnes décèdent chaque année des suites d’une méconnaissance des gestes de premiers secours par leur entourage.Par ailleurs, les différents drames auxquels les français ont dû faire face ces deux dernières années rendent cette",
  skills_needed: 0,
  starting_at: "2018/10/17 14:00:00",
  duration_in_hours: 4.5,
  recurrent: true,
  recurrency_in_days: 4,
  recurrency_ending_on: "2018/12/17 14:00:00",
  end_candidature_date: "2018/10/17 14:00:00",
  organization: fbna
})


hébergement = Mission.create!({
  title: "Herbergement d'urgence pour une famille de 5 personnes",
  category: "Hebergement",
  address: "15 rue Guépin, 44000 Nantes",
  volunteers_needed: 2,
  description: "Besoin d'hébergement une famille de 5 personnes d'origine erythréennes pendant 1 semaine.",
  starting_at: "2018/10/17 14:00:00",
  duration_in_hours: "",
  recurrent: true,
  recurrency_in_days: 5,
  recurrency_ending_on: "2018/12/22 14:00:00",
  end_candidature_date: "2018/10/17 14:00:00",
  organization: ligue_droits_de_lhomme
})


hébergement_2 = Mission.create!({
  title: "Herbergement d'urgence pour une mère et sa fille",
  category: "Hebergement",
  address: "26 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 2,
  description: "Besoin d'hébergement une famille de 5 personnes d'origine erythréennes pendant 1 semaine.",
  starting_at: "2018/11/17 14:00:00",
  duration_in_hours: 10,
  recurrent: true,
  recurrency_in_days: 5,
  recurrency_ending_on: "2018/11/22 14:00:00",
  end_candidature_date: "2018/10/17 14:00:00",
  organization: gasprom
})


hébergement_3 = Mission.create!({
  title: "Herbergement d'urgence pour une fille de 15 ans",
  category: "Herbergement",
  address: "26 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 1,
  description: "Besoin d'hébergement une famille de 5 personnes d'origine erythréennes pendant 1 semaine.",
  skills_needed: 0,
  starting_at: "2018/09/17 14:00:00",
  recurrent: true,
  recurrency_in_days: 5,
  recurrency_ending_on: "2018/09/22 14:00:00",
  end_candidature_date: "2018/10/17 14:00:00",
  organization: emmaus
})

cours_de_dessin = Mission.create!({
  title: "Accompagnateurs pour un cours de dessin",
  category: "Activité",
  address: "16 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Votre mission en tant que bénévole :
  - Encadrer avec 2 autres bénévoles un groupe d'une vingtaine de personnes
  - Apprendre les bases du dessin
  - Accompagner les personnes depuis leur domicile jusqu'au siège de l'association
  ",
  skills_needed: "
  Passionnée par le dessin,
  Bases en pédagogie,
  ",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 4,
  recurrent: false,
  end_candidature_date: "2018/09/12 15:00:00",
  organization: diaconat
})

cours_de_dessin_1 = Mission.create!({
  title: "Accompagnateurs pour un cours de dessin",
  category: "Activité",
  address: "16 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 4,
  description: "Votre mission en tant que bénévole :
  - Encadrer avec 2 autres bénévoles un groupe d'une vingtaine de personnes
  - Apprendre les bases du dessin
  - Accompagner les personnes depuis leur domicile jusqu'au siège de l'association",
  skills_needed: "
  Passionnée par le dessin,
  Bases en pédagogie,",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 3,
  recurrent: false,
  end_candidature_date: "2018/09/07 15:00:00",
  organization: cfda
})

activité_sportive = Mission.create!({
  title: "Activité sportive avec les réfugiés",
  category: "Activité",
  address: "6 rue de l'Indre 44000 Nantes",
  volunteers_needed: 5,
  description: "Votre mission en tant que bénévole :
  - Encadrer avec 10 autres bénévoles un groupe d'une cinquantaine de personnes agées de 12 à 15 ans
  - Organiser un tournoi multisport (rugby, foot, hand, ... )
  - Aider les autres bénévoles à la préparation de la nourriture pour la journée
  - Aider à la mise en place et à la desinstallation des activités",
  skills_needed: "
  Passionnée par le sport,
  Bases en pédagogie,
  Avoir le BAFA serait un plus
  ",
  starting_at: "2018/09/03 08:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/08/31 08:00:00",
  organization: gref
})

accompagnateur_refugie = Mission.create!({
  title: "Accompagnateur binôme avec un réfugié",
  category: "Accompagnemement",
  address: "94 rue des hauts pavés, 44000 Nantes",
  volunteers_needed: 10,
  description: "Votre mission en tant que bénévole :
  - Encadrer avec 2 autres bénévoles un groupe d'une vingtaine de personnes
  - Apprendre les bases du dessin
  - Accompagner les personnes depuis leur domicile jusqu'au siège de l'association",
  skills_needed:"",
  starting_at: "2018/09/11 07:00:00",
  duration_in_hours: 4,
  recurrent: false,
  end_candidature_date: "2018/09/10 07:00:00",
  organization: gref
})

parrain = Mission.create!({
  title: "Parrain d'une personne réfugié",
  category: "Accompagnemement",
  address: "16 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Nous recherchons des personnes habitant en france de longue date pour parrainer des réfugiés (1 rencontre par mois minimum pendant 6 mois) avec pour buts: l'amélioration du niveau de français à travers des conversations, sorties, ou toute initiative favorisant les échanges; la découverte de l'environnement et des loisirs (visites de la ville, de musées, séances de cinéma, spectacles, etc.); une meilleure connaissance de la culture française.",
  skills_needed: "
  - goût de l'engagement pour les causes de la solidarité
  - patience, pédagogie et habitude du travail d'équipe",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 2,
  recurrent: true,
  recurrency_in_days: 3,
  recurrency_ending_on: "2018/03/12 15:00:00",
  end_candidature_date: "2018/09/09 15:00:00",
  organization: mrap
})

formateur_web = Mission.create!({
  title: "Formateur web",
  category: "Enseignement",
  address: "16 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 1,
  description: "La crise migratoire ayant un impact sans précédent sur l'europe et le monde, notre mission est de promouvoir l’inclusion des personnes réfugiées dans ces communautés en s’appuyant sur l'innovation et la technologie. notre organisation s’attaque à la question de l’intégration des personnes réfugiées en leur proposant l’accès et la formation à des connaissances numériques.",
  skills_needed: "
  - connaissances bureautiques (pour les formateurs du niveau débutant)
  - connaissances essentielles de word, excel et du web (pour les formateurs du niveau intermédiaire)
  - utilisation fréquente d'excel (pour les formateurs du niveau pcie)
  - compétences linguistiques : anglais est un plus !
  - être disponible 3-6 heures par semaine
  - goût de l'engagement pour les causes de la solidarité
  - patience, pédagogie et habitude du travail d'équipe",
  starting_at: "2018/08/28 15:00:00",
  duration_in_hours: 3,
  recurrent: true,
  recurrency_in_days: 4,
  recurrency_ending_on: "2018/12/28 15:00:00",
  end_candidature_date: "2018/08/28 15:00:00",
  organization: saint_jean
})

insertion_professionnelle = Mission.create!({
  title: "Insertion professionnelle des migrants",
  category: "Accompagnemement",
  address: "1 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Acina mène un projet d'insertion professionnelle des nouveaux arrivants en situation d'exclusion, dont les personnes vivant en bidonville ou squat. dans ce cadre l'association recherche des personnes souhaitant s'impliquer dans le développement et la consolidation de partenariats avec des entreprises/centres de formation/structures d'insertion. plus largement, les bénévoles sont invités à réfléchir à des stratégies d'insertion innovantes.",
  skills_needed: "
  - compétences linguistiques : anglais est un plus !
  - goût de l'engagement pour les causes de la solidarité
  - patience, pédagogie et habitude du travail d'équipe",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 2,
  recurrent: true,
  recurrency_in_days: 7,
  recurrency_ending_on: "2018/01/12 15:00:00",
  end_candidature_date: "2018/09/12 14:00:00",
  organization: mrap
})

maraude = Mission.create!({
  title: "Maraude",
  category: "Maraude",
  address: "16 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 2,
  description: "Acina mène un projet d'insertion professionnelle des nouveaux arrivants en situation d'exclusion, dont les personnes vivant en bidonville ou squat. dans ce cadre l'association recherche des personnes souhaitant s'impliquer dans le développement et la consolidation de partenariats avec des entreprises/centres de formation/structures d'insertion. plus largement, les bénévoles sont invités à réfléchir à des stratégies d'insertion innovantes.",
  skills_needed: "
  Passionnée par le dessin,
  Bases en pédagogie ",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 3,
  recurrent: true,
  end_candidature_date:"2018/09/12 14:00:00",
  organization: croix_rouge
})

benevoles = Mission.create!({
  title: "Benevoles pour le festival des réfugiés",
  category: "Evenement",
  address: "1 place royal, 44000 Nantes",
  volunteers_needed: 15,
  description: "Votre mission en tant que bénévole sera une des suivantes en fonction du besoin:
  - Servir au bar
  - Accueil
  - Vente de place",
  skills_needed: "",
  starting_at: "2018/12/11 15:00:00",
  duration_in_hours: 2,
  recurrent: false,
  recurrency_in_days: 2,
  recurrency_ending_on: "2018/12/11 15:00:00",
  end_candidature_date: "2018/12/01 15:00:00",
  organization: diaconat
})


benevoles_entraide = Mission.create!({
  title: "Benevoles pour le festival de l'entraide",
  category: "Evenement",
  address: "5 quai des Antilles, 44000 Nantes",
  volunteers_needed: 2,
  description: "Votre mission en tant que bénévole sera une des suivantes en fonction du besoin:
  - Servir au bar
  - Accueil
  - Vente de place",
  skills_needed: "",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 4,
  recurrent: false,
  recurrency_in_days: 1,
  recurrency_ending_on: "2018/09/15 15:00:00",
  end_candidature_date: "2018/09/12 14:00:00",
  organization: fbna
})


collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2018/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})

aide_aux_devoirs = Mission.create!({
  title: "Aide aux devoirs",
  category: "Enseignement",
  address: "6 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 3,
  description: "Acina mène un projet d'insertion professionnelle des nouveaux arrivants en situation d'exclusion, dont les personnes vivant en bidonville ou squat. dans ce cadre l'association recherche des personnes souhaitant s'impliquer dans le développement et la consolidation de partenariats avec des entreprises/centres de formation/structures d'insertion. plus largement, les bénévoles sont invités à réfléchir à des stratégies d'insertion innovantes.",
  skills_needed:" - compétences linguistiques : anglais est un plus !
  - goût de l'engagement pour les causes de la solidarité
  - patience, pédagogie et habitude du travail d'équipe",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 3,
  recurrent: true,
  recurrency_in_days: 2,
  recurrency_ending_on: "2018/12/12 15:00:00",
  end_candidature_date:"2018/09/12 14:00:00",
  organization: anade
})

collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2018/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})

puts "DONE"

######################################################TEST####################################################

collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2017/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})

collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2017/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})

collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2018/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})

collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2018/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})

collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2018/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})

collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2018/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})

collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2018/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})

collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2018/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})
collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2018/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})
collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2018/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization: medecins_du_monde
})
collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2017/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: true,
  recurrency_in_days: 2,
  recurrency_ending_on: "2019/12/11 15:00:00",
  end_candidature_date: "2016/12/01 15:00:00",
  organization: medecins_du_monde
})
collecte_para = Mission.create!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2016/10/12 15:00:00",
  duration_in_hours: 10,
   recurrent: true,
  recurrency_in_days: 2,
  recurrency_ending_on: "2019/12/11 15:00:00",
  end_candidature_date: "2016/12/01 15:00:00",
  organization: medecins_du_monde
})
