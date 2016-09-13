require 'rails_helper'

feature 'user creates customer' do
  scenario 'successfully' do
    customer = Customer.new(name: 'Empresa',
                            billing_address: 'rua dos bobos numero zero',
                            mail: 'empresa@bobos.com',
                            phone: '96432547',
                            cnpj: '12.678.456/0001-46')

    visit new_costumer_path

    fill_in 'Nome', with: costumer.name
    fill_in 'Endereço de faturamento', with: costumer.billing_address
    fill_in 'E-Mail', with: costumer.mail
    fill_in 'Telefone', with: costumer.phone
    fill_in 'CNPJ', with: costumer.cnpj

    click_on 'Cadastrar Cliente'

    expect(page).to have_content(costumer.name)
    expect(page).to have_content(costumer.billing_address)
    expect(page).to have_content(costumer.mail)
    expect(page).to have_content(costumer.phone)
    expect(page).to have_content(costumer.cnpj)


  end
end
