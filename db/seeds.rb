Bank.destroy_all
AssessmentArea.destroy_all
Branch.destroy_all
CallCode.destroy_all
CollateralCode.destroy_all
EntityGroup.destroy_all
InvestmentType.destroy_all
LoanType.destroy_all
ServiceType.destroy_all
PurposeCode.destroy_all
DisasterType.destroy_all
DeclarationType.destroy_all
AssistanceType.destroy_all
Employee.destroy_all
Entity.destroy_all


Bank.create(code: 'LCB', description: 'Lake City Bank')
#Bank.create(code: 'CCB', description: 'Canyon Bank')

AssessmentArea.create(code: '21140', description: 'Elkhart/ Goshen/ Nappanee', bank_id:Bank.first.id)
AssessmentArea.create(code: '23060', description: 'Fort Wayne/ Columbia City/ South Whitley', bank_id:Bank.first.id)
AssessmentArea.create(code: 'Non-MSA', description: 'Non-MSA', bank_id:Bank.last.id)
AssessmentArea.create(code: 'Outside', description: 'Outside Assessment Area', bank_id:Bank.last.id)
AssessmentArea.create(code: '43780', description: 'South Bend/ Granger/ Mishawaka', bank_id:Bank.last.id)

Branch.create(code: '414', description: 'Akron', bank_id:Bank.first.id)
Branch.create(code: '418', description: 'Argos', bank_id:Bank.first.id)
Branch.create(code: '450', description: 'Auburn', bank_id:Bank.last.id)
Branch.create(code: '419', description: 'Bremen', bank_id:Bank.last.id)
Branch.create(code: '415', description: 'Columbia City', bank_id:Bank.last.id)
Branch.create(code: '427', description: 'Concord', bank_id:Bank.last.id)
Branch.create(code: '422', description: 'Cromwell', bank_id:Bank.last.id)
Branch.create(code: '421', description: 'Elkhart Beardsley', bank_id:Bank.last.id)
Branch.create(code: '424', description: 'Elkhart East', bank_id:Bank.last.id)
Branch.create(code: '431', description: 'Elkhart Hubbard Hill', bank_id:Bank.last.id)
Branch.create(code: '432', description: 'Elkhart Northwest', bank_id:Bank.last.id)
Branch.create(code: '452', description: 'Fort Wayne Jefferson', bank_id:Bank.last.id)
Branch.create(code: '444', description: 'Fort Wayne North', bank_id:Bank.last.id)
Branch.create(code: '449', description: 'Fort Wayne Northeast', bank_id:Bank.last.id)
Branch.create(code: '445', description: 'Fort Wayne Southwest', bank_id:Bank.last.id)
Branch.create(code: '416', description: 'Goshen Downtown', bank_id:Bank.last.id)
Branch.create(code: '420', description: 'Goshen South', bank_id:Bank.last.id)
Branch.create(code: '434', description: 'Granger', bank_id:Bank.last.id)
Branch.create(code: '437', description: 'Huntington', bank_id:Bank.last.id)
Branch.create(code: 'LPO', description: 'Indianapolis LPO', bank_id:Bank.last.id)
Branch.create(code: '430', description: 'Kendallville East', bank_id:Bank.last.id)
Branch.create(code: '428', description: 'LaGrange', bank_id:Bank.last.id)
Branch.create(code: '441', description: 'Ligonier Downtown', bank_id:Bank.last.id)
Branch.create(code: '423', description: 'Ligonier South', bank_id:Bank.last.id)
Branch.create(code: '439', description: 'Medaryville', bank_id:Bank.last.id)
Branch.create(code: '407', description: 'Mentone', bank_id:Bank.last.id)
Branch.create(code: '425', description: 'Middlebury', bank_id:Bank.last.id)
Branch.create(code: '408', description: 'Milford', bank_id:Bank.last.id)
Branch.create(code: '435', description: 'Mishawaka', bank_id:Bank.last.id)
Branch.create(code: '417', description: 'Nappanee', bank_id:Bank.last.id)
Branch.create(code: '405', description: 'North Webster', bank_id:Bank.last.id)
Branch.create(code: '433', description: 'One Call Center', bank_id:Bank.last.id)
Branch.create(code: '409', description: 'Pierceton', bank_id:Bank.last.id)
Branch.create(code: '436', description: 'Plymouth', bank_id:Bank.last.id)
Branch.create(code: '429', description: 'Rochester', bank_id:Bank.last.id)
Branch.create(code: '426', description: 'Shipshewana', bank_id:Bank.last.id)
Branch.create(code: '403', description: 'Silver Lake', bank_id:Bank.last.id)
Branch.create(code: '447', description: 'South Bend Northwest', bank_id:Bank.last.id)
Branch.create(code: '406', description: 'Syracuse', bank_id:Bank.last.id)
Branch.create(code: '511', description: 'Warsaw Downtown', bank_id:Bank.last.id)
Branch.create(code: '413', description: 'Warsaw East', bank_id:Bank.last.id)
Branch.create(code: '415', description: 'Warsaw North', bank_id:Bank.last.id)
Branch.create(code: '404', description: 'Warsaw West', bank_id:Bank.last.id)
Branch.create(code: '402', description: 'Winona Lake', bank_id:Bank.last.id)
Branch.create(code: '446', description: 'Winona Lake East', bank_id:Bank.last.id)

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

LoanType.create(code: 'C', description: 'COMMERCIAL')
LoanType.create(code: 'I', description: 'INSTALLMENT')
LoanType.create(code: 'R', description: 'REVOLVING CREDIT')
LoanType.create(code: 'M', description: 'MORTGAGE')

ServiceType.create(code: 'FDIC', description: 'FDIC Money Smart')
ServiceType.create(code: 'LCB', description: 'LCB Reality Store')
ServiceType.create(code: 'BOARD', description: 'Board of Directors Member')
ServiceType.create(code: 'COMMI', description: 'On an Advisory Committee')
ServiceType.create(code: 'FINAN', description: 'Financial Literacy-Education Efforts')
ServiceType.create(code: 'JA', description: 'Junior Achievement')

PurposeCode.create(code: 'PC1', description: 'Delivery')
PurposeCode.create(code: 'A.Hsg', description: 'Affordable Housing')
PurposeCode.create(code: 'CmSrv', description: 'Community Services')
PurposeCode.create(code: 'ProED', description: 'Promote Economic Development')
PurposeCode.create(code: 'Revit', description: 'Revitalize Low/Mod Income Geographies')

DisasterType.create(code: '290', description: 'Chemical Emergencies')
DisasterType.create(code: '291', description: 'Dam Failure')
DisasterType.create(code: '292', description: 'Earthquake')
DisasterType.create(code: '293', description: 'Fire')
DisasterType.create(code: '294', description: 'Flood')
DisasterType.create(code: '295', description: 'Hazardous Material')
DisasterType.create(code: '296', description: 'Heat')
DisasterType.create(code: '297', description: 'Hurricane')
DisasterType.create(code: '298', description: 'Landslide')
DisasterType.create(code: '299', description: 'Nuclear Power Plant Emergency')
DisasterType.create(code: '300', description: 'Terrorism')
DisasterType.create(code: '301', description: 'Thunderstorm')
DisasterType.create(code: '302', description: 'Tornado')
DisasterType.create(code: '303', description: 'Tsunami')
DisasterType.create(code: '304', description: 'Volcano')
DisasterType.create(code: '305', description: 'Wildfire')
DisasterType.create(code: '306', description: 'Winter Storm')

DeclarationType.create(code: '318', description: 'Emergency Declarations')
DeclarationType.create(code: '319', description: 'Major Declaration')

AssistanceType.create(code: 'AT1', description: 'Assistance type one')
AssistanceType.create(code: '320', description: 'Individual Assistance')
AssistanceType.create(code: '321', description: 'Public Assistance')
AssistanceType.create(code: '322', description: 'Hazard Mitigation Assistance')

Employee.create( code: 'LO1',
                 name: 'Larry Lender',
                 title: 'Loan Officer',
                 is_user: false )

Employee.create( code: 'MM123',
                 name: 'Mary Manager',
                 title: 'Branch Manager',
                 is_user: false )

Employee.create( code: 'TT123',
                 name: 'Telly Teller',
                 title: 'Teller',
                 is_user: false )

Employee.create( code: 'CO123',
                 name: 'Connie Compliant',
                 title: 'Compliance Officer',
                 is_user: true )


#Entity.create(  code: 'BIZ1',
#                description: 'Entity The First',
#                phone: '555-539-1111',
#                entity_group_id: EntityGroup.first.id,
#                revenue: 5000000000,
#                number_of_employees: 10000,
#                address: '5209 Winfree Lane Wake Forest NC 12345',
#                csz: 'what is CSZ?')

#Entity.create(  code: 'BIZ2',
#                description: 'Entity The Second',
#                phone: '555-539-1111',
#                entity_group_id: EntityGroup.first.id,
#                revenue: 1000000000,
#                number_of_employees: 15000,
#                address: '5209 Tennyson Parkway Plano TX 32154',
#                csz: 'what is CSZ?')
