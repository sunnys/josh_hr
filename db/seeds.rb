# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!(email: "admin@example.com", password: "P@ssw0rd", password_confirmation: "P@ssw0rd")
require 'ffaker'
require 'faker'
investment_types = ['LIC', 'MF', 'OR']
loan_types = ['Housing', 'Personal', 'Vehicle']
sports = ['basketball','Tennis - List of sports','tennis','badminton','bowling','cricket','curling','dodgeball','football','golf','handball','hockey','horseball','hurling','ice hockey','kickball','lacrosse','paddle','polo']
sport_level = ['District', 'State', 'National', 'International']
ranks = ['2IC', 'ADJT', 'QM', 'COY CDr', 'SM', 'SA', 'SQM', 'JQM', 'Head CIK', 'Sig JCo', 'MT JCo', 'RT JCo', 'BHM', 'MESS HAV', 'CQMH', 'CHM', 'Kote NCo', 'Mag NCo', 'INT HAV', 'RP HAV']
trade = ['GD','CLK', 'Cook Unit', 'Black Smith', 'Carpenter', 'Tailer', 'EBR', 'Safaiwala','Mess Cook', 'Masalachi', 'Barber', 'Washer Man', 'Mess Waiter', 'C&J', 'DPMT', 'WELDER', 'Electrician', 'E FTR', 'P&D', 'SVY FD', 'SVY', 'MSN', 'M SMITH', 'RADIO OPP', 'CHEF', 'STEWARD', 'HOUSE KEEPER', 'SKT']

achievement_categories = ['Sport', 'Singing', 'Dancing', 'Musician', 'Cook', 'Others']
achievement_level = ['District', 'State', 'National', 'International']
type_of_leave = ['AL', 'CL']
rules = [
    {rule: 'TA ACT RULE 13', period: 0},
    {rule: 'TA ACT RULE 14', period: 0},
    {rule: 'TA ACT RULE 19', period: 1},
    {rule: 'TA ACT RULE 20', period: 2},
    {rule: 'TA ACT RULE 20-A', period: 1},
    {rule: 'TA ACT RULE 21', period: 1},
    {rule: 'TA ACT RULE 21-A', period:24},
    {rule: 'TA ACT RULE 33', period: 12}
]
rules.each do  |r|
    MasterRule.create!(r)
end

ranks.reverse.each_with_index do |r, i|
    RankMaster.create!(name: r, level: i)
end

religion = ['Hindu', 'Muslim', 'Sikh', 'Christian', 'Budhdhism', 'Jain']
mothertongue = ['Hindi', 'Marathi', 'Punjabi', 'Gujrati', 'Bengali']

def add_embodiment(professional_detail, rule_name, date_of_appointment, days=nil)
    rec_rule = MasterRule.find_by(rule: rule_name)
    RulePeriod.create!({
        rule: rec_rule.rule,
        from: date_of_appointment,
        to: (date_of_appointment + rec_rule.period.months),
        total_embodied_day: (days.nil? ? (rec_rule.period*30) : days), 
        total_disembodied_day: 0,
        professional_detail_id: professional_detail.id
    })
end

def add_disembodiment(professional_detail, rule_name, days)
    # rec_rule = MasterRule.find_by(rule: rule_name)
    professional_detail.rule_periods.create!({
        # rule: rec_rule,
        # from: date_of_appointment,
        # to: (date_of_appointment + rec_rule.period.months),
        # total_embodied_day: rec_rule.period, 
        total_disembodied_day: days,
        professional_detail_id: professional_detail.id
    })
end

def create_personals
    investment_types = ['LIC', 'MF', 'OR']
    loan_types = ['Housing', 'Personal', 'Vehicle']
    sports = ['basketball','Tennis - List of sports','tennis','badminton','bowling','cricket','curling','dodgeball','football','golf','handball','hockey','horseball','hurling','ice hockey','kickball','lacrosse','paddle','polo']
    sport_level = ['District', 'State', 'National', 'International']
    ranks = ['2IC', 'ADJT', 'QM', 'COY CDr', 'SM', 'SA', 'SQM', 'JQM', 'Head CIK', 'Sig JCo', 'MT JCo', 'RT JCo', 'BHM', 'MESS HAV', 'CQMH', 'CHM', 'Kote NCo', 'Mag NCo', 'INT HAV', 'RP HAV']
    trade = ['GD','CLK', 'Cook Unit', 'Black Smith', 'Carpenter', 'Tailer', 'EBR', 'Safaiwala','Mess Cook', 'Masalachi', 'Barber', 'Washer Man', 'Mess Waiter', 'C&J', 'DPMT', 'WELDER', 'Electrician', 'E FTR', 'P&D', 'SVY FD', 'SVY', 'MSN', 'M SMITH', 'RADIO OPP', 'CHEF', 'STEWARD', 'HOUSE KEEPER', 'SKT']

    achievement_categories = ['Sport', 'Singing', 'Dancing', 'Musician', 'Cook', 'Others']
    achievement_level = ['District', 'State', 'National', 'International']
    type_of_leave = ['AL', 'CL']
    religion = ['Hindu', 'Muslim', 'Sikh', 'Christian', 'Budhdhism', 'Jain']
    mothertongue = ['Hindi', 'Marathi', 'Punjabi', 'Gujrati', 'Bengali']

    army_no = Random.rand(10000000..99999999).to_s + ((65 + rand(26)).chr).to_s
    name = FFaker::Name.name
    father_name = FFaker::Name.name
    date_of_birth = Faker::Time.between(40.years.ago, 20.years.ago)
    date_of_enrolment = Date.new(date_of_birth.year)
    age_of_enrolment = date_of_birth.year - date_of_enrolment.year
    date_of_attestation = date_of_enrolment + 12.months
    date_of_discharge = Date.new(date_of_attestation.year + rand(10..20))
    pancard_no = Faker::Alphanumeric.alphanumeric(10)
    aadhar_no = Random.rand(100000000000..999999999999)
    driving_license_no = Faker::DrivingLicence.uk_driving_licence
    email = FFaker::Internet.email
    mobile_no = Faker::PhoneNumber.cell_phone
    rank = ranks.sample

    u = User.create({
        email: email, 
        password: "password", 
        password_confirmation: "password", 
        army_no: army_no, 
        username: name 
    })
    personel_detail = PersonelDetail.create!({
        army_no: u.army_no, 
        father_name: father_name, 
        rank: rank, 
        appointment: rank, 
        name: name, 
        religion: religion.sample,
        main_class: nil, 
        sub_class: nil,
        mothertongue: mothertongue.sample, 
        date_of_enrolment: date_of_enrolment, 
        date_of_birth: date_of_birth, 
        age_on_enrolment: age_of_enrolment, 
        attestation: nil, 
        date_of_attestation: date_of_attestation, 
        driving_license_no: driving_license_no, 
        mobile_no: mobile_no, 
        adhar_no: aadhar_no, 
        pancard_no: pancard_no, 
        email: email, 
        trade: trade.sample,
        user_id: u.id
    })
    city = Faker::Address.city
    state = Faker::Address.state
    p personel_detail
    HomeAddress.create!({
        house_no: Random.rand(30), 
        street: Faker::Address.street_address, 
        town: city, 
        post_office: city, 
        to_and_distance_from: 15.0, 
        police_station: city, 
        tehsil: city, 
        district: city, 
        state: state, 
        nrs_and_distance_from_home: "45",
        personel_detail_id: personel_detail.id
    })
    ac_no = Faker::Bank.account_number
    jac_no = Faker::Bank.account_number(13)
    ifsc_code = Faker::Bank.iban
    micr_no = Faker::Bank.iban
    bank_code = Faker::Bank.name
    BankAccount.create!({
        single_bank_account: ac_no, 
        joint_acount_no: jac_no, 
        ifsc_code: ifsc_code, 
        micr_no: micr_no, 
        bank_code: bank_code,
        personel_detail_id: personel_detail.id
    })
    Investment.create!({
        investment_type: investment_types.sample, 
        amount: Random.rand(250000..2500000), 
        period: Random.rand(120..240), 
        personel_detail_id: personel_detail.id
    })
    Loan.create!({
        loan_type: loan_types.sample, 
        amount: Random.rand(250000..2500000), 
        duration: Random.rand(120..240),
        personel_detail_id: personel_detail.id
    })
    Sport.create!({
        sport_name: sports.sample, 
        level: sport_level.sample, 
        from: nil, 
        to: nil, 
        playing_currently: [true, false].sample, 
        represented_country: [true, false].sample,
        personel_detail_id: personel_detail.id
    })

    Achievement.create!({
        category: achievement_categories.sample,
        level: achievement_level.sample,
        title: "Winner",
        personel_detail_id: personel_detail.id
    })

    course = Faker::Company.name
    professional_detail = ProfessionalDetail.create!({
        army_no: u.army_no, 
        local_course: course, 
        pri_cadre: course, 
        army_course: course,
        discharge_due_date: date_of_discharge,
        user_id: u.id
    })

    add_embodiment(professional_detail, 'TA ACT RULE 19', date_of_enrolment)
    add_embodiment(professional_detail, ['TA ACT RULE 20', 'TA ACT RULE 21', 'TA ACT RULE 21-A', 'TA ACT RULE 33'].sample, date_of_enrolment)
    no_of_days_in_service = (date_of_discharge - date_of_enrolment).to_i
    add_embodiment(professional_detail, ['TA ACT RULE 20', 'TA ACT RULE 21', 'TA ACT RULE 21-A', 'TA ACT RULE 33'].sample, date_of_enrolment,(no_of_days_in_service - rand(500)))

    add_disembodiment(professional_detail, "", rand(500))
    u
end

def update_leave_records(u)
    pd = u.professional_detail
    on_leave = [true, false].sample
    type_of_leave = ['AL', 'CL'].sample
    total_number_days = Random.rand(30..60)
    from = Date.today - total_number_days.days
    to = Date.today + Random.rand(20)
    if on_leave
        LeaveRecord.create!(professional_detail_id: pd.id, type_of_leave: type_of_leave, from: from, to: to, total_no_of_days: total_number_days)
        pd.on_leave_currently = true
    else
        pd.on_leave_currently = false
    end
    pd.save!
end

def update_posting(u)
    pd = u.professional_detail
    on_leave = [true, false].sample
    # type_of_leave = ['AL', 'CL'].sample
    total_number_days = Random.rand(30..60)
    from = Date.today - total_number_days.days
    to = Date.today + Random.rand(20)
    if on_leave
        PostingRecord.create!(professional_detail_id: pd.id, peace_duty: true, from: from, to: to, total_peace_duty_day: total_number_days)
        pd.on_field_currently = false
    else
        PostingRecord.create!(professional_detail_id: pd.id, field_dduty: true, from: from, to: to, total_field_duty_day: total_number_days)
        pd.on_field_currently = true
    end
    pd.save!
end

def update_achievement(u)
    achievement_categories = ['Sport', 'Singing', 'Dancing', 'Musician', 'Cook', 'Others']
    achievement_level = ['District', 'State', 'National', 'International']
    pd = u.professional_detail
    achiever = [true, false].sample
    if achiever
        Achievement.create!(personel_detail_id: pd.id, category: achievement_categories.sample, title: "Winner", level: achievement_level.sample )
        pd.on_leave_currently = true
    else
        pd.on_leave_currently = false
    end
    pd.save!
end

def generate_hierarchy
    higher_ranks = RankMaster.where('level > ?', 15)
    record_with_higher_ranks = PersonelDetail.where(rank: higher_ranks.map(&:name))
    record_with_lower_ranks = PersonelDetail.where.not(rank: higher_ranks.map(&:name))
end
# begin
# 100.times do 
#     u = create_personals()
#     update_leave_records(u)
#     update_posting(u)
#     update_achievement(u)
# end

u = User.create!(email: "admin@indianarmy.gov.in", password: "password", password_confirmation: "password", username: "Admin", army_no: "AAA777", admin: true)
PersonelDetail.create!(user_id: u.id)
ProfessionalDetail.create!(user_id: u.id)

u = User.create!(email: "clerk@indianarmy.gov.in", password: "password", password_confirmation: "password", username: "Admin", army_no: "AAA778", clerk: true)
PersonelDetail.create!(user_id: u.id)
ProfessionalDetail.create!(user_id: u.id)
# rescue Exception => ex
#     p ex.message
# end