Admin.create([
    {
        username: "Eric Mugo",
        password: "EMugo123"
    },
    {
        username: "Elsie Hawi",
        password: "EHawi123"
    },
    {
        username: "Bryan Waweru",
        password: "BWaweru123"
    },
    {
        username: "Jude Koome",
        password: "JKoome123"
    }
])

Charity.create([
    {
        name: "Kenya Education Fund",
        location: "Nairobi",
        phone_number: "0702769712",
        email: "info@kenyaeducationfund.org",
        purpose: "Providing Kenyan youth with access to quality education",
        password: "KEFNairobi"
    },
    {
        name: "Plan International",
        location: "Nairobi",
        phone_number: "0709859000",
        email: "Kenya.Co@plan-international.org",
        purpose: "Raises awareness about children rights",
        password: "PlanIntNrb"
    },
    {
        name: "The Turning Point Trust",
        location: "Nairobi",
        phone_number: "0794402478",
        email: "info@Tptrust.org",
        purpose: "End poverty",
        password: "TptrustNrb"
    },
    {
        name: "Kibera Pride Initiave",
        location: "Nairobi",
        phone_number: "0110001782",
        email: "info@kiberapride.org",
        purpose: "Provide home care to vulnerable children in Kibera",
        password: "KPrideInitiative"
    }
])

Donation.create([
    {
        charity: "Plan International",
        donor: "Simon Otieno",
        amount: "500.00",
        name: "Raise awareness of children rights",
        location: "Nairobi",
        phone_number: "0709859000",
        anonymous: "True",
        recurrence: "One-time"
    },
    {
        charity: "Kibera Pride Initiave",
        donor: "Kendy Muhatia",
        amount: "2000.00",
        name: "Provide care to children in Kibera",
        location: "Nairobi",
        phone_number: "0110001782",
        anonymous: "False",
        recurrence: "Monthly"
    },
    {
        charity: "Kenya Education Fund",
        donor: "Anthony Musila",
        amount: "1500.00",
        name: "Provide youth with quality education",
        location: "Nairobi",
        phone_number: "0702769712",
        anonymous: "False",
        recurrence: "Yearly"
    },
    {
        charity: "The Turning Point Trust",
        donor: "Glory Masika",
        amount: "3000.00",
        name: "To end poverty",
        location: "Nairobi",
        phone_number: "0794402478",
        anonymous: "True",
        recurrence: "One-time"
    },
    {
        charity: "Kibera Pride Initiative",
        donor: "William Otwani",
        amount: "5000.00",
        name: "Provide care to children in Kibera",
        location: "Nairobi",
        phone_number: "0110001782",
        anonymous: "False",
        recurrence: "Monthly"
    }
])

Donors.create([
    {
        name: "John Kipkoech",
        email: "kipkoechj@gmail.com",
        password: "JKipkoech",
        phone_number: "0745891468"
    },
    {
        name: "Anthony Musila",
        email: "antomusila@gmail.com",
        password: "AntoMusila",
        phone_number: "0738154893"
    },
    {
        name: "Beulah Njeri",
        email: "beunjeri@gmail.com",
        password: "Beulah254",
        phone_number: "0712896472"
    },
    {
        name: "Simon Otieno",
        email: "otienosimon@gmail.com",
        password: "Otissimon",
        phone_number: "0789235797"
    },
    {
        name: "Glory Masika",
        email: "glomasika@gmail.com",
        password: "Masiks61",
        phone_number: "0747981237"
    },
    {
        name: "Monica Chebet",
        email: "monicahebet@gmail.com",
        password: "Monique23",
        phone_number: "07291871537"
    },
    {
        name: "Kendy Muhatia",
        email: "kmuhatia@gmail.com",
        password: "KMuhati87",
        phone_number: "0739254968"
    },
    {
        name: "Trevor Mainye",
        email: "trevorm@gmail.com",
        password: "Tmainye09",
        phone_number: "0789144792"
    },
    {
        name: "William Otwani",
        email: "wotwani@gmail.com",
        password: "Otwaniwilly",
        phone_number: "0789426885"
    },
    {
        name: "Sharlyne Nyaboke",
        email: "shanyaboke@gmail.com",
        password: "Nyaboksharly",
        phone_number: "07479632168"
    }
])