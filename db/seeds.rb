
puts 'Truncating all existing tables but NOT rebuilding the schema...'
Service.destroy_all
Volunteer.destroy_all
Organization.destroy_all
Loan.destroy_all
Investment.destroy_all
Bank.destroy_all
AssessmentArea.destroy_all
CallCode.destroy_all
CollateralCode.destroy_all
InvestmentType.destroy_all
LoanType.destroy_all
ServiceType.destroy_all
PurposeCode.destroy_all



puts "Creating 'banks' picklist..."
Bank.create(code: 'LCB', description: 'Racoon City Bank')
Bank.create(code: 'CCB', description: 'Red Canyon Bank')

10.times do |b|
  Bank.create(code: b, description: Faker::Name.name)
end

puts "Creating 'assessment areas' picklist..."
AssessmentArea.create(code: '21140', description: 'Elkhart/ Goshen/ Nappanee', bank_id:Bank.first.id)
AssessmentArea.create(code: '23060', description: 'Fort Wayne/ Columbia City/ South Whitley', bank_id:Bank.first.id)
AssessmentArea.create(code: 'Non-MSA', description: 'Non-MSA', bank_id:Bank.last.id)
AssessmentArea.create(code: 'Outside', description: 'Outside Assessment Area', bank_id:Bank.last.id)
AssessmentArea.create(code: '43780', description: 'South Bend/ Granger/ Mishawaka', bank_id:Bank.last.id)

puts "Creating 'call codes' picklist..."
CallCode.create(code: '1A10', description: 'Construction 1-4 family')
CallCode.create(code: '1A20', description: 'construction other- Land Development or Land only')
CallCode.create(code: '1B00', description: 'Secured by Farmland')
CallCode.create(code: '1B00', description: '1-4 Family Open End Line')
CallCode.create(code: '1C2A', description: '1-4 Family First Lien')
CallCode.create(code: '1C2B', description: '1-4 Family resid prop jr lien')
CallCode.create(code: '1D00', description: 'Multi Family REM')
CallCode.create(code: '1E10', description: 'Non Farm Non Residential Owner Occupied')
CallCode.create(code: '1E20', description: 'Non Farm Non Residential Non Owner Occupied')
CallCode.create(code: '2A10', description: 'US Comml Branches- foreign bank')
CallCode.create(code: '2A20', description: 'Other US commercial Banks')
CallCode.create(code: '2B00', description: 'Other US Depository Institutes')
CallCode.create(code: '2C10', description: 'Foreign brch of US Banks')
CallCode.create(code: '2C20', description: 'Other banks foreign countries')
CallCode.create(code: '3000', description: 'Agriculture products/loans to farmers')
CallCode.create(code: '4A00', description: 'Commercial and Industrial US address')
CallCode.create(code: '4B00', description: 'Commercial and Industrial non US address')
CallCode.create(code: '5A00', description: 'Acceptances- US banks')
CallCode.create(code: '5B00', description: 'Acceptances- foreign banks')
CallCode.create(code: '6A00', description: 'Credit Cards related plans')
CallCode.create(code: '6B00', description: 'Consumer Revolving Lines')
CallCode.create(code: '6C00', description: 'Automobile')
CallCode.create(code: '6D00', description: 'Other Consumer loans')
CallCode.create(code: '7000', description: 'Foreign govts & Offical inst')
CallCode.create(code: '8A00', description: 'Taxable obligations')
CallCode.create(code: '8B00', description: 'tax-exempt obligations')
CallCode.create(code: '9A00', description: 'Loans to non-depository institutions')
CallCode.create(code: '9B10', description: 'Loans - purchase/ carry securities')
CallCode.create(code: '9B20', description: 'Other loans/exclude consumer')
CallCode.create(code: '10A0', description: 'Lease Finance Rec US Addresses')
CallCode.create(code: '10B0', description: 'Lease Finance Red Non US Address')

puts "Creating 'collateral codes' picklist..."
CollateralCode.create(code: '00', description: 'UNSECURED')
CollateralCode.create(code: 'U2', description: 'GOODS/SERVICES')
CollateralCode.create(code: 'U2', description: 'APPLIANCES')
CollateralCode.create(code: 'N1', description: 'STOCKS OR BONDS')
CollateralCode.create(code: 'M1', description: 'AIRCRAFT')
CollateralCode.create(code: 'U1', description: 'EQUIP/ACC REC')
CollateralCode.create(code: 'U1', description: 'INV/ACC/EQUIP')
CollateralCode.create(code: 'U2', description: 'INVENT/EQUIP')
CollateralCode.create(code: 'U2', description: 'LIVESTOCK, FARM EQUIP')
CollateralCode.create(code: 'U3', description: 'CROPS')
CollateralCode.create(code: 'U3', description: 'MINERAL RIGHT')
CollateralCode.create(code: 'R9', description: 'WITH MORTGAGE')
CollateralCode.create(code: 'M9', description: 'GUARANTY')
CollateralCode.create(code: 'T6', description: 'MOBILE HOMES')
CollateralCode.create(code: 'T9', description: 'AUTO AND HELC')
CollateralCode.create(code: 'T9', description: 'MOBILE HOME AND HELC')
CollateralCode.create(code: 'T9', description: 'BOAT AND HELC')
CollateralCode.create(code: 'R2', description: 'HELOC PARTITION LOAN')
CollateralCode.create(code: 'R9', description: 'HELC/UNSECURED')
CollateralCode.create(code: 'R1', description: 'FIRST MTG PRIMARY')
CollateralCode.create(code: 'R1', description: 'CONSTRUCTION')
CollateralCode.create(code: 'R1', description: 'BUSINESS LN SECURED BY RESIDENCE/MULTI')
CollateralCode.create(code: 'T1', description: 'NEW AUTO/TRUCK-CAPITAL LENDING')
CollateralCode.create(code: 'U2', description: 'PICKUP CAMPERS')
CollateralCode.create(code: 'T3', description: 'MOTORCYCLES')
CollateralCode.create(code: 'T7', description: 'TRAILERS')
CollateralCode.create(code: 'T1', description: 'AUTO/TRUCK')
CollateralCode.create(code: 'T2', description: 'TRUCK OVER 1 TON')
CollateralCode.create(code: 'T4', description: 'WATERCRAFT')
CollateralCode.create(code: 'T5', description: 'RV/MOTORHOME')
CollateralCode.create(code: 'T9', description: 'MISC  I.E. ATV, PULL CAMPERS')
CollateralCode.create(code: 'N4', description: 'LCB CD/SAVINGS (ANY DEPOSIT ACCT)')
CollateralCode.create(code: 'N2', description: 'LCB STOCK')
CollateralCode.create(code: 'N3', description: 'BROKERAGE')
CollateralCode.create(code: 'N9', description: 'MISC NEG/POSS')
CollateralCode.create(code: 'R1', description: '1-4 FAMILY 1ST LIEN')
CollateralCode.create(code: 'R2', description: '1-4 FAMILY JUNIOR LIEN')
CollateralCode.create(code: 'R3', description: 'AG- NO DWELLING')
CollateralCode.create(code: 'R4', description: 'BARELAND OTHER')
CollateralCode.create(code: 'R5', description: 'MULTI FAMILY 5+  1ST LIEN')
CollateralCode.create(code: 'R6', description: 'MULTI FAMILY 5+ JUNIOR LIEN')
CollateralCode.create(code: 'R7', description: 'COMMERCIAL PROPERTY')
CollateralCode.create(code: 'R8', description: 'COMMERCIAL CONSTRUCTION')
CollateralCode.create(code: 'R9', description: 'MISC RE')
CollateralCode.create(code: 'A1', description: 'ASSIGNMENT OF INSURANCE (LIFE OR DISABILITY)')
CollateralCode.create(code: 'A2', description: 'ASSIGNMENT OF NOTE')
CollateralCode.create(code: 'A3', description: 'ASSIGNMENT OF RENTS/LEASES')
CollateralCode.create(code: 'A9', description: 'MISCELLANEOUS  I.E. MILK')
CollateralCode.create(code: 'U1', description: 'ANY THAT INCLUDED ACCT RECEIVABLE')
CollateralCode.create(code: 'U2', description: 'STATE UCC NO ACCT REC')
CollateralCode.create(code: 'U3', description: 'COUNTY UCC- FIXTURES')
CollateralCode.create(code: 'U9', description: 'MISC UCC')
CollateralCode.create(code: 'M2', description: 'VESSEL SHIP MTG')
CollateralCode.create(code: 'M9', description: 'MISCELLANEOUS')
CollateralCode.create(code: 'MR', description: 'MULTI WITH REAL ESTATE')
CollateralCode.create(code: 'MC', description: 'MULTI NO REAL ESTATE')

puts "Creating 'investment types' picklist..."
InvestmentType.create(code: 'TIM', description: 'Time')
InvestmentType.create(code: 'LIHTC', description: 'Low Income Housing Tax Credits')
InvestmentType.create(code: 'NMTC', description: 'New Markets Tax Credits')
InvestmentType.create(code: 'MBS', description: 'Targeted Mortgage Backed Securities')
InvestmentType.create(code: 'MB', description: 'Targeted Municipal Bonds')
InvestmentType.create(code: 'CDFI', description: 'Community Development Financial Institutions')
InvestmentType.create(code: 'MFO', description: 'Minority or Female Owned Financial Institutions')
InvestmentType.create(code: 'LICU', description: 'Low Income Credit Unions')
InvestmentType.create(code: 'DON', description: 'Donations - Funds Given to Non-Profit  or qualifyier')
InvestmentType.create(code: 'IN-KI', description: 'In Kind Donations of property  / land')
InvestmentType.create(code: 'SBA 504 Fund', description: 'SBA 504 Fund')

puts "Creating 'loan types' picklist..."
LoanType.create(code: 'C', description: 'COMMERCIAL')
LoanType.create(code: 'I', description: 'INSTALLMENT')
LoanType.create(code: 'R', description: 'REVOLVING CREDIT')
LoanType.create(code: 'M', description: 'MORTGAGE')

puts "Creating 'service types' picklist..."
ServiceType.create(code: 'FDIC', description: 'FDIC Money Smart')
ServiceType.create(code: 'LCB', description: 'LCB Reality Store')
ServiceType.create(code: 'BOARD', description: 'Board of Directors Member')
ServiceType.create(code: 'COMMI', description: 'On an Advisory Committee')
ServiceType.create(code: 'FINAN', description: 'Financial Literacy-Education Efforts')
ServiceType.create(code: 'JA', description: 'Junior Achievement')

puts "Creating 'purpose codes' picklist..."
PurposeCode.create(code: 'PC1', description: 'Delivery')
PurposeCode.create(code: 'A.Hsg', description: 'Affordable Housing')
PurposeCode.create(code: 'CmSrv', description: 'Community Services')
PurposeCode.create(code: 'ProED', description: 'Promote Economic Development')
PurposeCode.create(code: 'Revit', description: 'Revitalize Low/Mod Income Geographies')

puts "Creating 'volunteers'..."
1000.times do |i|
    Volunteer.create( employee_code: 'EMP' + i.to_s,
                     name: Faker::Name.name,
                     title: Faker::Name.title)
end


puts "Creating 'organizations'..."
Organization.create( 
  name:	"Lutheran Social Services of Indiana",	address:"330 Madison Street",	city:"Fort Wayne",	state:"IN",	zip:"46502", phone:"(260) 426-3347",	website:"www.lssin.org", revenue:"0", number_of_employees:"0")

Organization.create( 
  name:	"Junior Achievement/ Northern IN",	address:"610 Noble Dr.",	city:"Fort Wayne", state:"IN", zip:"46825", phone:"260-484-2543",	website:"www.jani.org",	revenue:"0",	number_of_employees:"0")#mission:"To Educate and Inspire young people to Value free enterprise, business and economics in order to Improve the Quality of their lives!")

Organization.create(
  name:	"Leisure Living Apartments", address:"309 East Catherine St", city:"Milford",	state:"IN",	zip:"46542", phone:"574-658-3639",	website:"", revenue:"0",	number_of_employees:"0" )#mission:"To foster the availability of sufficient high quality, sanitary and affordable housing for low and moderate-income families.")
  
Organization.create(
  name:	"Easter Seals Arc Foundation", address:"4919 Coldwater Rd.", city:"Fort Wayne", state:"IN", zip:"46825", phone:"260-456-4534", website:"http://neindiana.easterseals.com",	revenue:"0",	number_of_employees:"0" )#mission:	"Easter Seals Arc of Northeast Indiana has been serving people with disabilities and special needs and their families for over half of the last century.  What is now Easter Seals Arc began as Johnny Appleseed School in 1954 with a small group of Fort Wayne parents who held a dream for their children with developmental disabilities.  That dream included education, skill training, recreation, integration and support that would enable their children to live within the community at the level of independence of their choice.
  #Now over 50 years later, the same basic principles and philosophy remain at the core of our ever-growing list of services.  Easter Seals Arc's affiliation with both Easter Seals and The Arc empower us to provide the highest quality of services and resources for children and adults with a wide range of disabilities.  We are proud of our geographical expansion, our growing list of progressive programs and our personal commitment to each person and family we serve.")	

Organization.create(
  name:	"YWCA St Joe County/South Bend",	address:	"1102 South Fellows St",	city:	"South Bend",	state:	"IN",	zip:	"46601",	phone:	"574-233-9491",	website:"www.ywca.org",	revenue:"0",	number_of_employees:"0" )#mission:"Dedicated to eliminating racism, empowering women and promoting peace, justice, freedom and dignity for all.")
  
Organization.create(  
  name:	"Salvation Army Elkhart",	address:	"300 North Main St",	city:	"Elkhart",	state:	"IN",	zip:	"46516",	phone:"",		website:	"http://www.usc.salvationarmy.org/elkhart",	revenue:"0",	number_of_employees:	"0" )#mission:	"To preach the gospel of Jesus Christ and to meet human need in His name without discrimination.")

Organization.create(
  name:	'Lutheran Social Services of Indiana',	address:	'330 Madison Street',	city:	'Fort Wayne',	state:	'IN',	zip:	'46502',	phone:	'(260) 426-3347',	website:	'www.lssin.org',	revenue:	'0',	number_of_employees:	'0')#: Faker::StarWars.quote)

Organization.create(	name:	'Habitat for Humanity- Kosciusko',	address:	'1702 East Center St',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'574-269-4104',	website:	'http://kosciuskohabitat.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'LaCasa of Goshen',	address:	'202 N. Cottage Avenue',	city:	'Goshen',	state:	'IN',	zip:	'46528',	phone:	'(574) 533-4450',	website:	'http://lacasagoshen.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'The Enchanted Hills Community Partnership Cente',	address:	'9799 Excaliber Place',	city:	'Cromwell',	state:	'IN',	zip:	'46732',	phone:	'260-856-2136',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Cancer Services of Northeast Indiana',	address:	'6316 Mutual Dr',	city:	'Fort Wayne',	state:	'IN',	zip:	'46582',	phone:	'260-484-9560',	website:	'http://www.cancer-services.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Clay Intermediate School',	address:	'52900 Lily Rd',	city:	'South Bend',	state:	'IN',	zip:	'46637',	phone:	'(574) 243-7145',	website:	'https://www.edline.net/pages/clay_intermediate_cen',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Allen County',	address:	'334 E. Berry St.',	city:	'Fort Wayne',	state:	'IN',	zip:	'46802',	phone:	'(260) 422-4776',	website:	'http://unitedwayallencounty.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Elkhart Child Development Center',	address:	'2121 Prairie Street',	city:	'Elkhart',	state:	'IN',	zip:	'56517',	phone:	'574-293-5316',	website:	'http://elkhartchildcare.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Kosciusko County',	address:	'475 Anchorage Road, Suite 3',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'(574) 269-2592',	website:	'http://www.unitedwaykosciusko.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Kosciusko Economic Development Corporation(KEDCO)',	address:	'121 North Lake Street',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'574-265-2601',	website:	'http://kdi-in.com',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Fairfield Elementary School',	address:	'1200 South Clinton Street',	city:	'Fort Wayne',	state:	'IN',	zip:	'46502',	phone:	'260.467.2009',	website:	'http://www.fwcs.k12.in.us/schools/oneschool.php?ID',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Franke Park Elementary',	address:	'828 Mildred Av',	city:	'Fort Wayne',	state:	'IN',	zip:	'46808',	phone:	'260.467.6925',	website:	'http://www.fwcs.k12.in.us/schools/oneschool.php?ID',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Warsaw Community Development Corporation',	address:	'117 West Center St.',	city:	'Warsaw',	state:	'IN',	zip:	'46582',	phone:	'574-267-6419',	website:	'http://www.warsawcdc.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'LaGrange County Economic Development Corporation',	address:	'304 N. Townline Road, Suite 2',	city:	'LaGrange',	state:	'IN',	zip:	'46761',	phone:	'(260) 499-4994',	website:	'http://www.lagrangecountyedc.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'HLCNI (Hispanic Leadership Coalition ..)',	address:	'2513 South Calhoun St.',	city:	'Fort Wayne',	state:	'IN',	zip:	'46807',	phone:	'260-744-9540',	website:	'http://hlcnifw.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Lifeline Youth and Family Services',	address:	'7136 Gettysburg Pike',	city:	'Fort Wayne',	state:	'IN',	zip:	'46804',	phone:	'800-509-6884',	website:	'http://lifelineyouth.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Pierceton Chamber of Commerce Incorporated',	address:	'Po Box 49',	city:	'Pierceton',	state:	'IN',	zip:	'46562',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Habitat for Humanity- Huntington',	address:	'1454 Etna Ave.',	city:	'Huntington',	state:	'IN',	zip:	'46750',	phone:	'260.356.7425',	website:	'http://www.habitat.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Lincoln Elementary School-Huntington',	address:	'2037 E. Taylor Street',	city:	'Huntington',	state:	'IN',	zip:	'46750',	phone:	'260-356-2914',	website:	'http://lincoln.hccsc.k12.in.us/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Syracuse Elementary',	address:	'502 West Brooklyn St',	city:	'Syracuse',	state:	'IN',	zip:	'46567',	phone:	'574-457-4484',	website:	'http://www.wawasee.k12.in.us/education/school/scho',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Kosciusko County Cancer Care Fund',	address:	'2170 North Pointe Drive',	city:	'Warsaw',	state:	'IN',	zip:	'46582',	phone:	'(574)-269-5188',	website:	'http://www.k21foundation.org/cancer-care-fund/inde',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Goshen Housing Athority',	address:	'1101 W. Lincoln Ave.',	city:	'Goshen',	state:	'IN',	zip:	'46526',	phone:	'574-533-9925',	website:	'http://www.ci.goshen.in.us/260457.html',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'VITA-TCE Programs',	address:	'',	city:	'',	state:	'IN',	zip:	'',	phone:	'',	website:	'www.irs.gov',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Junior Achievement- Biztown',	address:	'610 Noble Dr.',	city:	'Fort Wayne',	state:	'IN',	zip:	'46825',	phone:	'260-484-2543',	website:	'www.jani.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'CARES',	address:	'2720 California Rd.',	city:	'Elkhart',	state:	'IN',	zip:	'46514',	phone:	'(574) 262-5944',	website:	'http://www.elkhart.k12.in.us/content.php?id=2',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Ligonier Chamber of Commerce',	address:	'P.O. Box 121',	city:	'Ligonier',	state:	'IN',	zip:	'46767',	phone:	'(260) 894-9909',	website:	'http://www.ligonierindianachamber.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Mad Anthonys Childrens Hope House',	address:	'7922 W. Jefferson Blvd.',	city:	'Fort Wayne',	state:	'IN',	zip:	'46804',	phone:	'(260) 459-8550',	website:	'http://childrenshopefw.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Habitat for Humanity- Marshall',	address:	'116 S Walnut St',	city:	'Plymouth',	state:	'IN',	zip:	'46563',	phone:	'(574) 935-4214',	website:	'http://www.habitat.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Battell Elementary',	address:	'715 East Broadway',	city:	'Mishawaka',	state:	'IN',	zip:	'46545',	phone:	'574-254-3900',	website:	'http://mishawaka.k12.in.us/battell',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Edith Brown Intermediate Center',	address:	'737 W Beale St',	city:	'South Bend',	state:	'IN',	zip:	'46616',	phone:	'(574) 287-9680',	website:	'http://compass.doe.in.gov',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Syracuse Wawasee Rotary Charitable Foundation',	address:	'101 East Main St.',	city:	'Syracuse',	state:	'IN',	zip:	'46567',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'J E Ober Elementary',	address:	'801 E Houston St',	city:	'Garrett',	state:	'IN',	zip:	'46738',	phone:	'(260) 357-3112',	website:	'http://www.gkb.k12.in.us/jeoweb/site/default.asp',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Waterloo Elementary',	address:	'300 E Douglas St',	city:	'Waterloo',	state:	'IN',	zip:	'46793',	phone:	'(260) 920-1016',	website:	'http://indiana.schooltree.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Washington Elementary-Plymouth',	address:	'1500 Lake Avenue',	city:	'Plymouth',	state:	'IN',	zip:	'46563',	phone:	'(574) 936-4072',	website:	'http://www.plymouth.k12.in.us/washington/index.htm',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'LaSalle Elementary',	address:	'1511 Milburn Blvd',	city:	'Mishawaka',	state:	'IN',	zip:	'46544',	phone:	'(574) 254-4800',	website:	'http://www.mishawaka.k12.in.us/lasalle/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Washington Center Elementary',	address:	'1936 W Wallen Rd',	city:	'Fort Wayne',	state:	'IN',	zip:	'46818',	phone:	'(260) 467-6250',	website:	'http://www.fwcs.k12.in.us/schools/oneschool.php?ID',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Community Homebuyers Corporation',	address:	'227 West Jefferson Blvd. 12th floor',	city:	'South Bend',	state:	'IN',	zip:	'46601',	phone:	'574.235.9660',	website:	'http://www.southbendin.gov/living/community_develo',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Whitley County Economic Development Board',	address:	'220 West Van Buren St',	city:	'Columbia City',	state:	'IN',	zip:	'46725',	phone:	'(260) 244-5506',	website:	'http://whitleyedc.com/default/index.cfm',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'St. Vincent De Paul',	address:	'3408 Ardmore Trail',	city:	'South Bend',	state:	'IN',	zip:	'46628',	phone:	'574-234-6000',	website:	'http://www.saintvincent-in.org/index.html',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Ft Wayne Women''s Bureau',	address:	'3521 Lake Avenue, Suite 1',	city:	'Fort Wayne',	state:	'IN',	zip:	'46805',	phone:	'260.424.7977',	website:	'http://www.womensbureau.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Whitley County Chamber of Commerce',	address:	'201 N Line St',	city:	'Columbia City',	state:	'IN',	zip:	'46725',	phone:	'260-248-8131',	website:	'http://www.whitleychamber.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Whitley County Community Corrections',	address:	'101 W Market St',	city:	'Columbia City',	state:	'IN',	zip:	'46725',	phone:	'',	website:	'http://whitleygov.com/department/?fDD=11-0',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Columbia City Rotary',	address:	'P.O. Box 926',	city:	'Columbia City',	state:	'IN',	zip:	'46725',	phone:	'1 (260)691-2923',	website:	'http://www.rotary6540.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Pathfinders Services-Huntington',	address:	'2824 Theater Ave',	city:	'Huntington',	state:	'IN',	zip:	'46750',	phone:	'(260) 356-0500',	website:	'http://www.pathfinderservices.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Noble County',	address:	'114 W Mitchell St',	city:	'Kendallville',	state:	'IN',	zip:	'46755',	phone:	'260-347-6822',	website:	'http://www.uwnoble.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Pierceton Elementary School',	address:	'307 W. School Street',	city:	'Pierceton',	state:	'IN',	zip:	'46562',	phone:	'574.594.2210',	website:	'http://www.whitko.k12.in.us/PE/PE_index.html',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Leesburg Elementary',	address:	'6250 N. Old State Rd. 15',	city:	'Leesburg',	state:	'IN',	zip:	'46538',	phone:	'(574) 453-4121',	website:	'http://leesburg.warsaw.k12.in.us/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Cromwell Park Board',	address:	'111 Park St',	city:	'Cromwell',	state:	'IN',	zip:	'46732',	phone:	'260-856-3143',	website:	'http://indiana.4ra.in/Indiana/Cromwell/Cromwell-Co',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Cromwell Business Association',	address:	'120 Jefferson St',	city:	'Cromwell',	state:	'IN',	zip:	'46732',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Akron Elementary School',	address:	'202 E Rural St',	city:	'Akron',	state:	'IN',	zip:	'46910',	phone:	'(574) 893-4646',	website:	'http://akron.tvsc.k12.in.us/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Hispanic Chamber of Commerce of Greater Fort Wayne',	address:	'826 Ewing Street',	city:	'Fort Wayne',	state:	'IN',	zip:	'46802',	phone:	'(260) 422-6697',	website:	'http://www.fwhispanicchamber.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Forest Park Elementary',	address:	'2004 Alabama Ave',	city:	'Fort Wayne',	state:	'IN',	zip:	'46805',	phone:	'(260) 467-6850',	website:	'http://www.fwcs.k12.in.us/schools/oneschool.php?ID',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Greater Elkhart Chamber of Commerce',	address:	'418 S. Main St.',	city:	'Elkhart',	state:	'IN',	zip:	'46516',	phone:	'(574) 293-1531',	website:	'http://www.elkhart.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Kosciusko Leadership Academy',	address:	'',	city:	'',	state:	'IN',	zip:	'',	phone:	'',	website:	'http://klaconnect.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Indiana Chamber 2025 Task Force',	address:	'115 West Washington St, Suite 850S',	city:	'Indianapolis',	state:	'IN',	zip:	'46204',	phone:	'(317) 264-3110',	website:	'http://www.indianachamber.com',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Elkhart County Community Foundation (ECCF)',	address:	'101 S Main St',	city:	'Elkhart',	state:	'IN',	zip:	'46516',	phone:	'574.295.8761',	website:	'http://www.elkhartccf.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Regional Chamber of Northeast Indiana (NICC)',	address:	'300 E Main Street - Suite 140',	city:	'Fort Wayne',	state:	'IN',	zip:	'46802',	phone:	'260-424-0863',	website:	'http://www.neinadvocates.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Ivy Tech Community College Board of Trustees',	address:	'50 West Fall Creek Parkway North Dr',	city:	'Indianapolis',	state:	'IN',	zip:	'46208',	phone:	'(888) IVY-LINE',	website:	'http://www.ivytech.edu/about/trustees/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Ivy Tech Foundation',	address:	'50 West Fall Creek Parkway North Dr',	city:	'Inianapolis',	state:	'IN',	zip:	'46208',	phone:	'(888) IVY-LINE',	website:	'http://www.ivytech.edu',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'OrthoWorx',	address:	'121 W. Market St., Suite B',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'(574) 306-4121',	website:	'http://orthoworxindiana.com',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Logan Community Resources, Inc',	address:	'2505 E. Jefferson Blvd',	city:	'South Bend',	state:	'IN',	zip:	'46615',	phone:	'(574) 289-4831',	website:	'http://www.logancenter.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Northern Indiana Workforce Board (NIWB)',	address:	'300 East Main St',	city:	'Fort Wayne',	state:	'IN',	zip:	'46802',	phone:	'574-237-9675',	website:	'http://www.gotoworkone.com',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'WNIT Public Television',	address:	'300 West Jefferson Boulevard',	city:	'South Bend',	state:	'IN',	zip:	'46601',	phone:	'574.675.9648',	website:	'http://www.wnit.org/about',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Warsaw-Kosciusko County Chamber of Commerce',	address:	'313 S Buffalo St',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'574-267-6311',	website:	'http://www.wkchamber.com',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Business Leadership Network-Kosciusko',	address:	'504 North Bay Drive',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'574.371.1404',	website:	'http://www.inbln.org/?pageId=38',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Kosciusko Community Action Council',	address:	'313 S Buffalo St',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'574-267-6311',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Boys & Girls Club of Nappanee',	address:	'107 E Marion St',	city:	'Nappanee',	state:	'IN',	zip:	'46550',	phone:	'574-773-5200',	website:	'http://www.bgcnappanee.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Goshen Salvation Army',	address:	'1013 N Main St',	city:	'Goshen',	state:	'IN',	zip:	'46528',	phone:	'(574) 533-9584',	website:	'http://www.usc.salvationarmy.org/goshen',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Bridges Out Of Poverty',	address:	'117 N Lafayette',	city:	'South Bend',	state:	'IN',	zip:	'46601',	phone:	'(574) 339-1232',	website:	'http://www.sjcbridges.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Goshen High School',	address:	'401 Lincolnway East',	city:	'Goshen',	state:	'IN',	zip:	'46526',	phone:	'(574) 533-8651',	website:	'http://ghs.goshenschools.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Trinity Christian Church',	address:	'124 Hobart St',	city:	'Ashley',	state:	'IN',	zip:	'46705',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Jefferson Intermediate Center',	address:	'528 S Eddy St',	city:	'South Bend',	state:	'IN',	zip:	'46617',	phone:	'(574) 283-8700',	website:	'https://www.edline.net/pages/Jefferson_Intermediat',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Madison Elementary',	address:	'1436 W 300 N',	city:	'Warsaw',	state:	'IN',	zip:	'46582',	phone:	'574-267-6231',	website:	'http://madison.warsaw.k12.in.us/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Medaryville Town Board',	address:	'409 E Main St',	city:	'Medaryville',	state:	'IN',	zip:	'47957',	phone:	'219-843-2101',	website:	'http://www.pulaskionline.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'YWCA North Central Indiana- Elkhart County',	address:	'23426 US Highway 33',	city:	'Elkhart',	state:	'IN',	zip:	'46517',	phone:	'574-233-9491',	website:	'http://www.ywca.org/site/pp.asp?c=gtJRJ9MWIwE&b=47',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Harrison Elementary',	address:	'1300 Husky Trail',	city:	'Warsaw',	state:	'IN',	zip:	'46582',	phone:	'(574) 269-7533',	website:	'http://harrison.warsaw.k12.in.us/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Lagrange- United Fund',	address:	'109 E Centeral Ave',	city:	'Lagrange',	state:	'IN',	zip:	'46761',	phone:	' 260.463.8040',	website:	'http://www.unitedfundoflagrange.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Greene Intermediate Center',	address:	'24702 Roosevelt Rd',	city:	'South Bend',	state:	'IN',	zip:	'46614',	phone:	'(574) 283-7900',	website:	'https://www.edline.net/pages/Greene_Intermediate_C',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Jefferson Elementary School',	address:	'100 Seminary Dr',	city:	'Winona Lake',	state:	'IN',	zip:	'46590',	phone:	'574-267-7361',	website:	'http://jefferson.warsaw.k12.in.us/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Bloomingdale Elementary School',	address:	'1300 Orchard St',	city:	'Fort Wayne',	state:	'IN',	zip:	'46808',	phone:	'(260) 467-6700',	website:	'http://www.fwcs.k12.in.us/schools/oneschool.php?ID',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Syracuse Wawasee Rotary Club',	address:	'11374 N State Road 13',	city:	'Syracuse',	state:	'IN',	zip:	'46567',	phone:	'847-866-3000',	website:	'http://swrotary.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Marshall Intermediate Center',	address:	'1433 Byron Dr',	city:	'South Bend',	state:	'IN',	zip:	'46614',	phone:	'(574) 231-5801',	website:	'https://www.edline.net/pages/marshall_intermediate',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Levan R. Scott Academy',	address:	'950 E Fairfax Ave',	city:	'Fort Wayne',	state:	'IN',	zip:	'46806',	phone:	'(260) 467-8050',	website:	'http://www.fwcs.k12.in.us/schools/oneschool.php?ID',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Super Shot Inc',	address:	'709 Clay St Suite 300',	city:	'Fort Wayne',	state:	'IN',	zip:	'46802',	phone:	'260-424-7468',	website:	'http://www.phpni.com/supershot.aspx',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Consumer Credit Counseling Service',	address:	'4105 West Jefferson Boulevard',	city:	'Fort Wayne',	state:	'IN',	zip:	'46804',	phone:	'(260) 432-8200',	website:	'http://www.financialhope.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Kiwanis Club of South Bend',	address:	'120 S St Joseph St',	city:	'South Bend',	state:	'IN',	zip:	'46601',	phone:	'(877) 883-5974',	website:	'http://www.southbendkiwanis.com/public/index.aspx',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Family Christian Development Center',	address:	'151 S Locke St',	city:	'Nappanee',	state:	'IN',	zip:	'46550',	phone:	'574.773.2149',	website:	'http://fcdcin.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Boys & Girls Club of Fort Wayne',	address:	'2609 Fairfield Avenue',	city:	'Fort Wayne',	state:	'IN',	zip:	'46807',	phone:	'260.744.0998',	website:	'http://www.bgcfw.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'SCORE- Chamber of Commerce',	address:	'418 S Main Street',	city:	'Elkhart',	state:	'IN',	zip:	'46515',	phone:	'(219) 293-1531',	website:	'http://www.elkhart.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Council on Aging',	address:	'230 E Jackson',	city:	'Elkhart',	state:	'IN',	zip:	'46516',	phone:	'(574) 295-1820',	website:	'http://www.elkhartcoa.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Church Community Services',	address:	'907 Oakland Avenue',	city:	'Elkhart',	state:	'IN',	zip:	'46516',	phone:	'574-295-3673',	website:	'http://www.churchcommunityservices.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'CASA',	address:	'121 N Lake St',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'(574) 372-2401',	website:	'http://www.casaofkosciuskocounty.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Builder''s Assoc. of Kosciusko and Fulton County',	address:	'313 S Buffalo St',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'574-267-6125',	website:	'http://www.bakfc.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Northeast Indiana Innovation Center',	address:	'3201 Stellhorn Rd',	city:	'Fort Wayne',	state:	'IN',	zip:	'46815',	phone:	'(260) 407-1736',	website:	'www.niic.net',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Boys & Girls Club- Elkhart',	address:	'131 E. Franklin St. Ste. 14',	city:	'Elkhart',	state:	'IN',	zip:	'46516',	phone:	'(574) 295-6838',	website:	'http://www.bgcelkhart.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Memorial High School-Elkhart',	address:	'2608 California Rd',	city:	'Elkhart',	state:	'IN',	zip:	'46514',	phone:	'(574) 262-5600',	website:	'http://www.emhschargers.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'American Red Cross- Kosciusko County Chapter',	address:	'320 N Buffalo St',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'574-267-5244',	website:	'http://www.koscoredcross.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Center for the Homeless-South Bend',	address:	'813 S. Michigan St.',	city:	'South Bend',	state:	'IN',	zip:	'46601',	phone:	'(574) 282-8700',	website:	'http://www.cfh.net/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Boys & Girls Club of Kosciusko County',	address:	'800 North Park Avenue',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'(574) 268-1155',	website:	'http://www.bgca.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Bowen Center- Kosciusko',	address:	'850 N Harrison St',	city:	'Warsaw',	state:	'IN',	zip:	'',	phone:	'574-268-9748',	website:	'http://www.bowencenter.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Child and Protective Services (CAPS)',	address:	'1000 W Hively Ave',	city:	'Elkhart',	state:	'IN',	zip:	'46517',	phone:	'(574) 295-2277',	website:	'http://www.capselkhart.org/report-child-abuse.asp',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Economic Development Corporation',	address:	'102 W. Lincoln Ave',	city:	'Goshen',	state:	'IN',	zip:	'46526',	phone:	'574-535-1002',	website:	'http://www.elkhartcountybiz.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Bristol Elementary',	address:	'705 Indiana Ave.',	city:	'Bristol',	state:	'IN',	zip:	'46507',	phone:	'574-848-7421',	website:	'http://elkhart.k12.in.us/bristol/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Elkhart County Hispanic Health Fair',	address:	'444 North Nappanee St',	city:	'Elkhart',	state:	'IN',	zip:	'46514',	phone:	'(574) 522-0966',	website:	'http://www.hlhcec.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Elkhart Luncheon Optimist Club',	address:	'500 S Main St',	city:	'Elkhart',	state:	'IN',	zip:	'46514',	phone:	'(314) 371-6000',	website:	'http://www.optimist.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Goshen Community Schools Foundation',	address:	'613 E Purl St',	city:	'Goshen',	state:	'IN',	zip:	'46526',	phone:	'574-533-8631',	website:	'http://district.goshenschools.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Merit Learning Center',	address:	'801 W Wilkinson',	city:	'Goshen',	state:	'IN',	zip:	'46526',	phone:	'574-533-9743',	website:	'http://merit.goshenschools.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Minority Business Council- Elkhart Chamber',	address:	'418 S. Main St.',	city:	'Elkhart',	state:	'IN',	zip:	'46516',	phone:	'(574) 293-1531',	website:	'http://www.elkhart.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Model Elementary School',	address:	'412 South Greene Road',	city:	'Goshen',	state:	'IN',	zip:	'46526',	phone:	'(574) 533-7677',	website:	'http://model.goshenschools.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Osolo Elementary School-Elkhart',	address:	'24975 CR 6 E',	city:	'Elkhart',	state:	'IN',	zip:	'46514',	phone:	'(574) 262-5590',	website:	'http://www.elkhart.k12.in.us/schools.php',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Soup of Success',	address:	'907 Oakland Ave',	city:	'Elkhart',	state:	'IN',	zip:	'46516',	phone:	'574-523-1551',	website:	'http://www.soupofsuccess.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Community Development Corp of NE Indiana',	address:	' 200 East Berry St., Suite # 320',	city:	'Fort Wayne',	state:	'IN',	zip:	'46802',	phone:	'(260) 427-1127',	website:	'http://www.cdcnein.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Northwood Middle School',	address:	'1201 E Wash Ctr Rd',	city:	'Fort Wayne',	state:	'IN',	zip:	'46825',	phone:	'(260) 467-2930',	website:	'http://www.edline.net/pages/Northwood_Middle_Schoo',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Guardian Management-Chestnut Hills Apt',	address:	'940 Steinman Drive',	city:	'Fort Wayne',	state:	'IN',	zip:	'46814',	phone:	'(260) 625-3020',	website:	'http://www.guardianmgt.com',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Harrison Hill Elementary',	address:	'355 S Cornell Cir',	city:	'Fort Wayne',	state:	'IN',	zip:	'46807',	phone:	'(260) 467-7000',	website:	'http://www.fwcs.k12.in.us/schools/oneschool.php?ID',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Foellinger Foundation- Allen County',	address:	'520 E Berry St',	city:	'Fort Wayne',	state:	'IN',	zip:	'46802',	phone:	'260-422-2900',	website:	'http://www.foellinger.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Merle J Abbett Elementary School',	address:	'4325 Smith St',	city:	'Fort Wayne',	state:	'IN',	zip:	'46806',	phone:	'(260) 467-5800',	website:	'http://www.fwcs.k12.in.us/schools/oneschool.php?ID',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Adams Elementary School',	address:	'3000 New Haven Ave',	city:	'Fort Wayne',	state:	'IN',	zip:	'46803',	phone:	'(260) 467-5850',	website:	'http://www.fwcs.k12.in.us/schools/oneschool.php?ID',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Southwick Elementary',	address:	'6500 Wayne Trace',	city:	'Fort Wayne',	state:	'IN',	zip:	'46816',	phone:	'(260) 446-0250',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Village Elementary',	address:	'4625 Werling Dr',	city:	'Fort Wayne',	state:	'IN',	zip:	'46806',	phone:	'(260) 446-0260',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Salvation Army- Fort Wayne',	address:	'2901 N Clinton St',	city:	'Fort Wayne',	state:	'IN',	zip:	'46805',	phone:	'',	website:	'http://www.salvationarmyusa.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Waynedale Elementary',	address:	'7201 Elzey',	city:	'Fort Wayne',	state:	'IN',	zip:	'46809',	phone:	'(260) 467-8820',	website:	'http://www.fwcs.k12.in.us/schools/oneschool.php?ID',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Dickinson Fine Arts Academy',	address:	'404 W. Elwood Ave',	city:	'South Bend',	state:	'IN',	zip:	'46628',	phone:	'(574) 283-7625',	website:	'https://www.edline.net/pages/Dickinson_Intermediat',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Edison Intermediate Center',	address:	'2701 Eisenhower Dr',	city:	'South Bend',	state:	'IN',	zip:	'46615',	phone:	'(574) 283-8900',	website:	'https://www.edline.net/pages/edison_intermediate_c',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Granger Business Association',	address:	'PO Box 427',	city:	'Granger',	state:	'IN',	zip:	'46530',	phone:	'574-271-7003',	website:	'www.grangertoday.com',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Jackson Intermediate Center',	address:	'5001 S Miami Rd',	city:	'South Bend',	state:	'IN',	zip:	'46614',	phone:	'(574) 231-5600',	website:	'https://www.edline.net/pages/Jackson_Intermediate_',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Navarre Intermediate Center',	address:	'4702 W Ford St',	city:	'South Bend',	state:	'IN',	zip:	'46619',	phone:	'(574) 283-7345',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Nuner Primary Center',	address:	'2716 Pleasant St.',	city:	'South Bend',	state:	'IN',	zip:	'46615',	phone:	'574-283-7850',	website:	'https://www.edline.net/pages/nuner_primary_center',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Real Services',	address:	'1151 S. Michigan Street',	city:	'South Bend',	state:	'IN',	zip:	'46601',	phone:	'574-233-8205',	website:	'http://www.realservices.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'St. Joseph County Literacy Council',	address:	'3840 Edison Lakes Parkway',	city:	'Mishawaka',	state:	'IN',	zip:	'46545',	phone:	'574.335.9781',	website:	'http://www.stjoereads.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Bowen Center- Enchanted Hills',	address:	'9799 E Excalibur Place',	city:	'Cromwell',	state:	'IN',	zip:	'46732',	phone:	'(260) 856-2441',	website:	'http://www.bowencenter.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Boys & Girls Club of Marshall County',	address:	'314 E. Jefferson St.',	city:	'314 E. Jefferson St.',	state:	'IN',	zip:	'46563',	phone:	'574-936-0660',	website:	'http://www.bgcmarshallcounty.com',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Cromwell-Kimmell Lions Club',	address:	'353 Baker Street',	city:	'Cromwell',	state:	'IN',	zip:	'46732',	phone:	'630-571-5466',	website:	'http://www.lionsclubs.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Fulton County Special Olympics',	address:	'6100 West 96th St Suite 270',	city:	'Indianapolis',	state:	'IN',	zip:	'46278',	phone:	'1 (317) 328-2000',	website:	'www.specialolympics.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Grace Village Retirement Home-Winona Lake',	address:	'337 Grace Village Dr.',	city:	'Winona Lake',	state:	'IN',	zip:	'46590',	phone:	'574-372-6200',	website:	'http://www.gracevillage.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Combined Community Services',	address:	'110 E Prairie St',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'574-269-6019',	website:	'http://www.combinedcommunityservices.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Triton Elementary',	address:	'200 Triton Dr',	city:	'Bourbon',	state:	'IN',	zip:	'46504',	phone:	'(574) 342-2355',	website:	'http://www.triton.k12.in.us/el/elem.html',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'West Noble Middle School',	address:	'5194 N US 33',	city:	'Ligonier',	state:	'IN',	zip:	'46767',	phone:	'(260) 894-3191',	website:	'http://westnoble.k12.in.us/ms/index_ms.htm',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Topeka Elementary School',	address:	'138 School St',	city:	'Topeka',	state:	'IN',	zip:	'465671',	phone:	'(260) 593-2897',	website:	'http://tes.westview.k12.in.us/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Kiwanis- Marshall County',	address:	'',	city:	'',	state:	'IN',	zip:	'',	phone:	'',	website:	'http://www.indkiw.org/public_district/index.aspx',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Kosciusko Community Senior Services',	address:	'800 N Park Ave',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'574-267-2012',	website:	'http://www.kosciuskoseniorservices.org/Index.cfm',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'YMCA- Kosciusko County',	address:	'1401 East Smith Street',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'(574) 269-9622',	website:	'http://www.kcymca.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'West Noble Elementary',	address:	'5294 N US 33',	city:	'Ligonier',	state:	'IN',	zip:	'46767',	phone:	'(260) 894-3191',	website:	'http://westnoble.k12.in.us/wne/wne_index.html',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Wawasee Area Housing Initiative',	address:	'1413 N Long St',	city:	'Syracuse',	state:	'IN',	zip:	'46567',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Teen Parents Suceeding',	address:	'604 S Poplar Dr',	city:	'Syracuse',	state:	'IN',	zip:	'46567',	phone:	'',	website:	'http://www.teenparentssucceeding.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Riverside Intermediate School',	address:	'905 E Baker',	city:	'Plymouth',	state:	'IN',	zip:	'46563',	phone:	'(574) 936-3787',	website:	'http://www.plymouth.k12.in.us/riverside/index.htm',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Salvation Army Auxillary-Warsaw',	address:	'501 Arthur St',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'574-267-5361',	website:	'http://corps.salvationarmyindiana.org/warsaw',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Marshall County Neighborhood Center',	address:	'402 W. Garro St.',	city:	'Plymouth',	state:	'IN',	zip:	'46563',	phone:	'(574) 936-3388',	website:	'http://www.marshallcountyneighborhoodcenter.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Menominee Elementary School',	address:	'815 Discovery Lane',	city:	'Plymouth',	state:	'IN',	zip:	'46563',	phone:	'574.936.2001',	website:	'http://www.plymouth.k12.in.us/menominee/index.htm',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Pulaski Human Services-Medaryville Senior Center',	address:	'125 E. Railroad Street',	city:	'Medaryville',	state:	'IN',	zip:	' 47957',	phone:	'219-843-5600',	website:	'http://hservices1.pulaskionline.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Mentone Chamber of Commerce Inc',	address:	'105 E Main St',	city:	'Mentone',	state:	'IN',	zip:	'46539',	phone:	'574-353-7417',	website:	'http://www.mentoneeggcity.com/chamber.htm',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Mentone Elementary',	address:	'301 East Jackson Street',	city:	'Mentone',	state:	'IN',	zip:	'46539',	phone:	'(574) 353-7465',	website:	'http://mentone.tvsc.k12.in.us/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Tippecanoe Valley Middle School',	address:	'11303 W 800 S',	city:	'Akron',	state:	'IN',	zip:	'46910',	phone:	'(574) 353-7353',	website:	'http://tvms.tvsc.k12.in.us/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Redevelopment Commission',	address:	'794 W Center St',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'(574) 372-9595',	website:	'http://warsaw.in.gov/index.aspx?NID=75',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Senior Housing Crime Prevention Foundation',	address:	'5100 Poplar Avenue Suite 711',	city:	'Memphis',	state:	'IN',	zip:	'38137',	phone:	'877-232-0859',	website:	'www.SHCPFoundation.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Pedcor Investments',	address:	'58270 Vista Blvd.',	city:	'Elkhart',	state:	'IN',	zip:	'46517',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Grameen',	address:	'',	city:	'Indianapolis',	state:	'IN',	zip:	'',	phone:	'',	website:	'http://www.grameen-info.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Great Lakes Capital',	address:	'1000 South Washington',	city:	'Lansing',	state:	'IN',	zip:	'48910',	phone:	'(517) 482-8555',	website:	'http://www.capfund.net',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Ridgewood',	address:	'502 N Main St',	city:	'Cloverdale',	state:	'IN',	zip:	'46120',	phone:	'(765) 795-6557',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'MWV Capital Partners',	address:	'',	city:	'',	state:	'IN',	zip:	'',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Centerfield II',	address:	'',	city:	'',	state:	'IN',	zip:	'',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'CRA Fund (Mutual Fund)',	address:	'',	city:	'',	state:	'IN',	zip:	'',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'CRA Fund allocation of GNMA REMIC Trust',	address:	'',	city:	'',	state:	'IN',	zip:	'',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'FGB 31339',	address:	'',	city:	'',	state:	'IN',	zip:	'',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'FGB 31680',	address:	'',	city:	'',	state:	'IN',	zip:	'',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Faith Mission- Elkhart',	address:	'801 Benham Avenue',	city:	'Elkhart',	state:	'IN',	zip:	'46516',	phone:	'(574) 293-3406',	website:	'http://www.faithmissionofelkhart.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Ft Wayne Urban League',	address:	'2135 South Hanna St.',	city:	'Fort Wayne',	state:	'IN',	zip:	'46803',	phone:	'(260) 745.3100',	website:	'http://www.fwurbanleague.org/fwul/index.cfm',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Goodwill- South Bend',	address:	'P. O. Box 3846',	city:	'South Bend',	state:	'IN',	zip:	'46619',	phone:	'(574) 472-7300',	website:	'http://www.goodwill.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Young Entrepreneurs',	address:	'202 Rural St',	city:	'Akron',	state:	'IN',	zip:	'46910',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Habitat for Humanity- Fulton',	address:	'PO Box 843',	city:	'Rochester',	state:	'IN',	zip:	'46975',	phone:	'574.223.9478',	website:	'http://www.fultoncountyhabitat.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Cedars HOPE',	address:	'527 West Berry St.',	city:	'Fort Wayne',	state:	'IN',	zip:	'',	phone:	' (260) 420-3507',	website:	'http://www.cedarshope.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Northeast Indiana Dietetic Association',	address:	'2918 Overlook Drive',	city:	'Fort Wayne',	state:	'IN',	zip:	'46808',	phone:	'765-748-3831',	website:	'http://www.eatrightin.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Questa Foundation for Education',	address:	'3468 Stellhorn Road',	city:	'Fort Wayne',	state:	'IN',	zip:	'46815',	phone:	'260.407.6494',	website:	'http://www.questafoundation.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'McMillen Center',	address:	'600 Jim Kelley Blvd.',	city:	' Fort Wayne',	state:	'IN',	zip:	'46816',	phone:	'(260) 456-4511',	website:	'http://www.mcmillencenter.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Boy Scouts of America',	address:	'8315 W Jefferson Blvd',	city:	'Fort Wayne',	state:	'IN',	zip:	'46804',	phone:	'260-432-9593',	website:	'http://www.scouting.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'YMCA of Greater Fort Wayne',	address:	'347 W Berry St Suite 500',	city:	'Fort Wayne',	state:	'IN',	zip:	'46802',	phone:	' 260-422-6488',	website:	'http://www.fwymca.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Childrens First Center',	address:	'1752 Wesley Rd.',	city:	'Auburn',	state:	'IN',	zip:	'46706',	phone:	'260.925.3865',	website:	'http://www.childrenfirstcenter.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of DeKalb County',	address:	'208 S Jackson St # B',	city:	'Auburn',	state:	'IN',	zip:	'46706',	phone:	'(260) 927-0995',	website:	'http://www.unitedwaydekalb.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Goshen FOP Lodge #81',	address:	'PO Box 1491',	city:	'Elkhart',	state:	'IN',	zip:	'46515',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Whitley County Community Foundation',	address:	'400 N Whitley St',	city:	'Columbia City',	state:	'IN',	zip:	'46725',	phone:	'260-244-5224',	website:	'http://whitleycountycommunityfoundation.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Greencroft Foundation',	address:	'1721 Greencroft Blvd.',	city:	'Goshen',	state:	'IN',	zip:	'46527',	phone:	'(574) 537-4000',	website:	'http://www.greencroft.org/foundation/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Habitat for Humanity- Elkhart',	address:	'2526 Peddlers Village Rd',	city:	'Goshen',	state:	'IN',	zip:	'46527',	phone:	'(574) 533-6109',	website:	'http://www.habitatec.com/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Bashor Children''s Home',	address:	'62226 County Road 15',	city:	'Goshen',	state:	'IN',	zip:	'46526',	phone:	'(574) 875-5117',	website:	'http://www.bashor.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Elkhart County',	address:	'601 CR 17',	city:	'Elkhart',	state:	'IN',	zip:	'46515',	phone:	'(574) 295-1650',	website:	'http://www.unitedwayec.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Fulton County',	address:	' 720 Main Street',	city:	'Rochester',	state:	'IN',	zip:	'46975',	phone:	'(574) 223-8929',	website:	'http://fultoncountyunitedway.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Youth Service Bureau',	address:	'1344 Maple Drive',	city:	'Huntington',	state:	'IN',	zip:	'46750',	phone:	'260-356-9681',	website:	'http://ysbofhuntingtonco.org/default.aspx',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Huntington County',	address:	'P.O. Box 347',	city:	'Huntington',	state:	'IN',	zip:	'46750',	phone:	' (260) 356-6160',	website:	'http://www.unitedwayhuntingtoncounty.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Baker Youth Club',	address:	'765 W Market St',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'574-267-8771',	website:	'http://www.bakeryouthclub.com',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Cardinal Services of Indiana',	address:	'504 North Bay Drive',	city:	'Warsaw',	state:	'IN',	zip:	'46580',	phone:	'(574) 267-3823',	website:	'http://www.cardinalservices.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Beaman Home',	address:	'P.O. Box 12',	city:	'Warsaw',	state:	'IN',	zip:	'46581',	phone:	'574-267-7701',	website:	'http://www.thebeamanhome.org/Mambo/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Metzger Outdoors- Charity Adventure Race',	address:	'208 South Jefferson St',	city:	'Silver Lake',	state:	'IN',	zip:	'46982',	phone:	'260-579-1505',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Camp Alexander Mack',	address:	'PO Box 158',	city:	'Milford',	state:	'IN',	zip:	'46542',	phone:	'574-658-4831',	website:	'http://www.campmack.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Warsaw Breakfast Optimist Club',	address:	'1400 E. Smith St.',	city:	'Warsaw',	state:	'IN',	zip:	'46581',	phone:	'',	website:	'http://warsawoptimist.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Retired Senior Volunteer Program',	address:	'107 West 5th St',	city:	'Auburn',	state:	'IN',	zip:	'46706',	phone:	'260-925-0917',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'St Joseph Reginal Medical Center',	address:	' 5215 Holy Cross Parkway',	city:	'Mishawaka',	state:	'IN',	zip:	'46545',	phone:	'(574) 335-5000',	website:	'http://www.sjmed.com',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Marshall County',	address:	'2701 N. Michigan Street',	city:	'Plymouth',	state:	'IN',	zip:	'46563',	phone:	'574-936-3366',	website:	'http://www.marshallcountyuw.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Miami County',	address:	'13 East Main',	city:	'Peru',	state:	'IN',	zip:	'46970',	phone:	' (765) 473-4240',	website:	'http://www.uwmiamip.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Noble House Ministries',	address:	'205 E Highland',	city:	'Albion',	state:	'IN',	zip:	'46701',	phone:	'260-636-7160',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Ligonier Rotary Club',	address:	'PO Box 261 Ligonier',	city:	'Ligonier',	state:	'IN',	zip:	'46767',	phone:	'1 260-894-3787',	website:	'http://www.rotary.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Ligonier Lions Club',	address:	'1455 W Perry Rd',	city:	'Ligonier',	state:	'IN',	zip:	'46767',	phone:	'260 894 4077',	website:	'http://www.lionsclubs.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Porter County',	address:	'951 Eastport Centre Dr',	city:	'Valparaiso',	state:	'IN',	zip:	'46384',	phone:	'(219) 464-3583',	website:	'http://www.unitedwaypc.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Pulaski',	address:	'',	city:	'           Medaryville',	state:	'IN',	zip:	'',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'C.L.A.S.S. Education',	address:	'5975 Castle Creek Park',	city:	'Indianapolis',	state:	'IN',	zip:	'46250',	phone:	'(317) 572-1576',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'South Bend Heritage Foundation',	address:	'803 Lincoln Way West',	city:	'South Bend',	state:	'IN',	zip:	'46616',	phone:	'574-289-1066',	website:	'http://www.sbheritage.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of St Joseph County',	address:	'3517 East Jefferson Boulevard',	city:	'South Bend',	state:	'IN',	zip:	'46615',	phone:	'574-323-8201',	website:	'http://www.uwsjc.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way Wabash County',	address:	'',	city:	'',	state:	'IN',	zip:	'',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Passages',	address:	'107 N Walnut Street',	city:	'Columbia City',	state:	'IN',	zip:	'46725',	phone:	'260-244-7688',	website:	'http://www.passagesinc.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Whitley County',	address:	'333 N Oak St',	city:	'Columbia City',	state:	'IN',	zip:	'46725',	phone:	'260-244-6454',	website:	'http://www.unitedwaywhitley.org',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'United Way of Wabash County',	address:	'',	city:	'Wabash',	state:	'IN',	zip:	'',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'SPARK Womens Entrepeneur Initiative',	address:	'Saint Mary''s College',	city:	'Notre Dame',	state:	'IN',	zip:	'46556',	phone:	'',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Women''s Task Force',	address:	'5215 Holy Cross Parkway',	city:	'Mishawaka',	state:	'IN',	zip:	'46545',	phone:	'(574) 231-6465',	website:	'http://womenstaskforce.org/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'West Central Elementary',	address:	'1842 S US 421',	city:	'Francesville',	state:	'IN',	zip:	'47946',	phone:	'219-567-9741',	website:	'http://es.wcsc.k12.in.us/',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)
Organization.create(	name:	'Elkhart Memorial Dollars for Scholars',	address:	'2608 California Road',	city:	'Elkhart',	state:	'IN',	zip:	'46514',	phone:	'(574) 262-5637',	website:	'',	revenue:	'0',	number_of_employees:	'0')#:	Faker::StarWars.quote)


puts "Creating 'service hours'..."
10.times do |i|
  h1=Random.new.rand(1..16)
  h2=Random.new.rand(1..16)
  t=[h1, h2].max
  c=[h1, h2].min
  Service.create( activity_dt:Faker::Date.between(3.months.ago, Date.today-1),
                  purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
                  volunteer_id:Random.new.rand(Volunteer.first.id..Volunteer.last.id),
                  organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
                  service_type_id:Random.new.rand(ServiceType.first.id..ServiceType.last.id), 
                  assessment_area_id:Random.new.rand(AssessmentArea.first.id..AssessmentArea.last.id), 
                  total_hours:t, 
                  cra_hours:c ) 
end
100.times do |i|
  h1=Random.new.rand(1..16)
  h2=Random.new.rand(1..16)
  t=[h1, h2].max
  c=[h1, h2].min
  Service.create( activity_dt:Faker::Date.between(5.years.ago, 4.years.ago),
                  purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
                  volunteer_id:Random.new.rand(Volunteer.first.id..Volunteer.last.id),
                  organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
                  service_type_id:Random.new.rand(ServiceType.first.id..ServiceType.last.id), 
                  assessment_area_id:Random.new.rand(AssessmentArea.first.id..AssessmentArea.last.id), 
                  total_hours:t, 
                  cra_hours:c )
end
100.times do |i|
  h1=Random.new.rand(1..16)
  h2=Random.new.rand(1..16)
  t=[h1, h2].max
  c=[h1, h2].min
  Service.create( activity_dt:Faker::Date.between(4.years.ago, 3.years.ago),
                  purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
                  volunteer_id:Random.new.rand(Volunteer.first.id..Volunteer.last.id),
                  organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
                  service_type_id:Random.new.rand(ServiceType.first.id..ServiceType.last.id), 
                  assessment_area_id:Random.new.rand(AssessmentArea.first.id..AssessmentArea.last.id), 
                  total_hours:t, 
                  cra_hours:c ) 
end
100.times do |i|
  h1=Random.new.rand(1..16)
  h2=Random.new.rand(1..16)
  t=[h1, h2].max
  c=[h1, h2].min
  Service.create( activity_dt:Faker::Date.between(3.years.ago, 2.years.ago),
                  purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
                  volunteer_id:Random.new.rand(Volunteer.first.id..Volunteer.last.id),
                  organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
                  service_type_id:Random.new.rand(ServiceType.first.id..ServiceType.last.id), 
                  assessment_area_id:Random.new.rand(AssessmentArea.first.id..AssessmentArea.last.id), 
                  total_hours:t, 
                  cra_hours:c )
end
100.times do |i|
  h1=Random.new.rand(1..16)
  h2=Random.new.rand(1..16)
  t=[h1, h2].max
  c=[h1, h2].min
  Service.create( activity_dt:Faker::Date.between(2.years.ago, 1.years.ago),
                  purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
                  volunteer_id:Random.new.rand(Volunteer.first.id..Volunteer.last.id),
                  organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
                  service_type_id:Random.new.rand(ServiceType.first.id..ServiceType.last.id), 
                  assessment_area_id:Random.new.rand(AssessmentArea.first.id..AssessmentArea.last.id), 
                  total_hours:t, 
                  cra_hours:c )
end


puts "Creating 'loans'..."
10.times do |i|
  Loan.create(  activity_dt:Faker::Date.between(3.months.ago, Date.today-1),
                purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
                organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
                account_number:Faker::Business.credit_card_number, 
                loan_number:Faker::Business.credit_card_number, 
                loan_type_id:Random.new.rand(LoanType.first.id..LoanType.last.id), 
                call_code_id:Random.new.rand(CallCode.first.id..CallCode.last.id), 
                collateral_code_id:Random.new.rand(CollateralCode.first.id..CollateralCode.last.id), 
                lien_address:Faker::Address.street_address, 
                lien_city:Faker::Address.city, 
                lien_state:Faker::Address.state_abbr, 
                lien_zip:Faker::Address.zip, 
                amount:Random.new.rand(80000..300000),
                term:'5', 
                is_cra_qualified:Faker::Boolean.boolean, 
                is_3rd_party:Faker::Boolean.boolean, 
                is_affiliate:Faker::Boolean.boolean, 
                state_code:'state_code', 
                county_code:'county_code', 
                tract:'tract', 
                msa:'msa' )
end
100.times do |i|
  Loan.create(activity_dt:Faker::Date.between(5.years.ago, 4.years.ago),
              purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
              organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
              account_number:Faker::Business.credit_card_number, 
              loan_number:Faker::Business.credit_card_number, 
              loan_type_id:Random.new.rand(LoanType.first.id..LoanType.last.id), 
              call_code_id:Random.new.rand(CallCode.first.id..CallCode.last.id), 
              collateral_code_id:Random.new.rand(CollateralCode.first.id..CollateralCode.last.id), 
              lien_address:Faker::Address.street_address, 
              lien_city:Faker::Address.city, 
              lien_state:Faker::Address.state_abbr, 
              lien_zip:Faker::Address.zip, 
              amount:Random.new.rand(80000..300000),
              term:'5', 
              is_cra_qualified:Faker::Boolean.boolean, 
              is_3rd_party:Faker::Boolean.boolean, 
              is_affiliate:Faker::Boolean.boolean, 
              state_code:'state_code', 
              county_code:'county_code', 
              tract:'tract', 
              msa:'msa' )
end
100.times do |i|
  Loan.create(activity_dt:Faker::Date.between(4.years.ago, 3.years.ago),
              purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
              organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
              account_number:Faker::Business.credit_card_number, 
              loan_number:Faker::Business.credit_card_number, 
              loan_type_id:Random.new.rand(LoanType.first.id..LoanType.last.id), 
              call_code_id:Random.new.rand(CallCode.first.id..CallCode.last.id), 
              collateral_code_id:Random.new.rand(CollateralCode.first.id..CollateralCode.last.id), 
              lien_address:Faker::Address.street_address, 
              lien_city:Faker::Address.city, 
              lien_state:Faker::Address.state_abbr, 
              lien_zip:Faker::Address.zip, 
              amount:Random.new.rand(80000..300000),
              term:'5', 
              is_cra_qualified:Faker::Boolean.boolean, 
              is_3rd_party:Faker::Boolean.boolean, 
              is_affiliate:Faker::Boolean.boolean, 
              state_code:'state_code', 
              county_code:'county_code', 
              tract:'tract', 
              msa:'msa' )
end
100.times do |i|
  Loan.create(activity_dt:Faker::Date.between(3.years.ago, 2.years.ago),
              purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
              organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
              account_number:Faker::Business.credit_card_number, 
              loan_number:Faker::Business.credit_card_number, 
              loan_type_id:Random.new.rand(LoanType.first.id..LoanType.last.id), 
              call_code_id:Random.new.rand(CallCode.first.id..CallCode.last.id), 
              collateral_code_id:Random.new.rand(CollateralCode.first.id..CollateralCode.last.id), 
              lien_address:Faker::Address.street_address, 
              lien_city:Faker::Address.city, 
              lien_state:Faker::Address.state_abbr, 
              lien_zip:Faker::Address.zip, 
              amount:Random.new.rand(80000..300000),
              term:'5', 
              is_cra_qualified:Faker::Boolean.boolean, 
              is_3rd_party:Faker::Boolean.boolean, 
              is_affiliate:Faker::Boolean.boolean, 
              state_code:'state_code', 
              county_code:'county_code', 
              tract:'tract', 
              msa:'msa' )
end
100.times do |i|
  Loan.create(activity_dt:Faker::Date.between(2.years.ago, 1.years.ago),
              purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
              organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
              account_number:Faker::Business.credit_card_number, 
              loan_number:Faker::Business.credit_card_number, 
              loan_type_id:Random.new.rand(LoanType.first.id..LoanType.last.id), 
              call_code_id:Random.new.rand(CallCode.first.id..CallCode.last.id), 
              collateral_code_id:Random.new.rand(CollateralCode.first.id..CollateralCode.last.id), 
              lien_address:Faker::Address.street_address, 
              lien_city:Faker::Address.city, 
              lien_state:Faker::Address.state_abbr, 
              lien_zip:Faker::Address.zip, 
              term:'5', 
              amount:Random.new.rand(80000..300000),
              is_cra_qualified:Faker::Boolean.boolean, 
              is_3rd_party:Faker::Boolean.boolean, 
              is_affiliate:Faker::Boolean.boolean, 
              state_code:'state_code', 
              county_code:'county_code', 
              tract:'tract', 
              msa:'msa' )
end


puts "Creating 'investments'..."
10.times do |i|
  Investment.create(activity_dt:Faker::Date.between(3.months.ago, Date.today-1),
                    purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
                    organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
                    investment_type_id:Random.new.rand(InvestmentType.first.id..InvestmentType.last.id), 
                    cusip_number:Faker::Business.credit_card_number, 
                    maturity_dt:Faker::Date.forward(1000), 
                    original_amount:'50,000', 
                    book_value:'75,000', 
                    unfunded_committment:'10,000', 
                    percent_of_entity_funding:'10') 
end
100.times do |i|
  Investment.create(activity_dt:Faker::Date.between(5.years.ago, 4.years.ago),
                    purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
                    organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
                    investment_type_id:Random.new.rand(InvestmentType.first.id..InvestmentType.last.id), 
                    cusip_number:Faker::Business.credit_card_number, 
                    maturity_dt:Faker::Date.forward(1000), 
                    original_amount:'50,000', 
                    book_value:'75,000', 
                    unfunded_committment:'10,000', 
                    percent_of_entity_funding:'10') 
end
100.times do |i|
  Investment.create(activity_dt:Faker::Date.between(4.years.ago, 3.years.ago),
                    purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
                    organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
                    investment_type_id:Random.new.rand(InvestmentType.first.id..InvestmentType.last.id), 
                    cusip_number:Faker::Business.credit_card_number, 
                    maturity_dt:Faker::Date.forward(1000), 
                    original_amount:'50,000', 
                    book_value:'75,000', 
                    unfunded_committment:'10,000', 
                    percent_of_entity_funding:'10') 
end
100.times do |i|
  Investment.create(activity_dt:Faker::Date.between(3.years.ago, 2.years.ago),
                    purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
                    organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
                    investment_type_id:Random.new.rand(InvestmentType.first.id..InvestmentType.last.id), 
                    cusip_number:Faker::Business.credit_card_number, 
                    maturity_dt:Faker::Date.forward(1000), 
                    original_amount:'50,000', 
                    book_value:'75,000', 
                    unfunded_committment:'10,000', 
                    percent_of_entity_funding:'10') 
end
100.times do |i|
  Investment.create(activity_dt:Faker::Date.between(2.years.ago, 1.years.ago),
                    purpose_code_id:Random.new.rand(PurposeCode.first.id..PurposeCode.last.id), 
                    organization_id:Random.new.rand(Organization.first.id..Organization.last.id), 
                    investment_type_id:Random.new.rand(InvestmentType.first.id..InvestmentType.last.id), 
                    cusip_number:Faker::Business.credit_card_number, 
                    maturity_dt:Faker::Date.forward(1000), 
                    original_amount:'50,000', 
                    book_value:'75,000', 
                    unfunded_committment:'10,000', 
                    percent_of_entity_funding:'10') 
end

puts 'Done.'
