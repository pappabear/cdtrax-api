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


Bank.create(code: 'ABC', description: 'The ABC Bank of Smalltown')
Bank.create(code: 'XYZ', description: 'The XYZ Bank of Biggsburg')

AssessmentArea.create(code: 'DAL', description: 'Dallas', bank_id:Bank.first.id)
AssessmentArea.create(code: 'FW', description: 'Fort Worth')
AssessmentArea.create(code: 'PAR', description: 'Paris')

Branch.create(code: 'MAI', description: 'Main Street', bank_id:Bank.first.id)
Branch.create(code: 'WRO', description: 'Southend')
Branch.create(code: 'DEN', description: 'Palladium Park')

CallCode.create(code: '911', description: 'Fraud')
CallCode.create(code: '123', description: 'Volnteer')
CallCode.create(code: '456', description: 'Education')

CollateralCode.create(code: 'aaa', description: 'Watches')
CollateralCode.create(code: 'bbb', description: 'Silver')
CollateralCode.create(code: 'ccc', description: 'Platinum')

EntityGroup.create(code: 'NW', description: 'NW Group')
EntityGroup.create(code: 'SE', description: 'SE Group')
EntityGroup.create(code: 'CE', description: 'Central group')

InvestmentType.create(code: 'TIM', description: 'Time')
InvestmentType.create(code: 'CAS', description: 'Cash')
InvestmentType.create(code: 'DON', description: 'Donations')

LoanType.create(code: 'LT1', description: 'Short-term')
LoanType.create(code: 'LT2', description: 'Long-term')
LoanType.create(code: 'LY3', description: 'High-risk')

ServiceType.create(code: 'ST1', description: 'Voluteer')
ServiceType.create(code: 'ST2', description: 'Community service')
ServiceType.create(code: 'St3', description: 'Meals-on-wheels')

PurposeCode.create(code: 'PC1', description: 'Delivery')
PurposeCode.create(code: 'PC2', description: 'Improvement')
PurposeCode.create(code: 'PC3', description: 'Salvage')

DisasterType.create(code: 'DT1', description: 'Natural')
DisasterType.create(code: 'DT2', description: 'Toxic materials spill')
DisasterType.create(code: 'DT3', description: 'Raining outside')

DeclarationType.create(code: 'DC1', description: 'Declaration type one')
DeclarationType.create(code: 'DC2', description: 'Declaration type two')
DeclarationType.create(code: 'DC3', description: 'Declaration type three')

AssistanceType.create(code: 'AT1', description: 'Assistance type one')
AssistanceType.create(code: 'AT2', description: 'Assistance type two')
AssistanceType.create(code: 'AT3', description: 'Assistance type three')

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

Entity.create(  code: 'BIZ1',
                description: 'Entity The First',
                phone: '555-539-1111',
                entity_group_id: EntityGroup.first.id,
                revenue: 5000000000,
                number_of_employees: 10000,
                address: '5209 Winfree Lane Wake Forest NC 12345',
                csz: 'what is CSZ?')

Entity.create(  code: 'BIZ2',
                description: 'Entity The Second',
                phone: '555-539-1111',
                entity_group_id: EntityGroup.first.id,
                revenue: 1000000000,
                number_of_employees: 15000,
                address: '5209 Tennyson Parkway Plano TX 32154',
                csz: 'what is CSZ?')
