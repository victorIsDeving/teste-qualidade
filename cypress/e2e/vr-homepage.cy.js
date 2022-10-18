describe('FrontEnd Testing', () => {
  it('Acessar a seção PRA VOCÊ', () => {
    //GIVEN
    cy.visit('https://www.vr.com.br')

    //WHEN
    //menu lateral
    cy.get('.vr-menu-trigger--open > .vr-menu-trigger__icon > path').click()
    //botão PRA VOCÊ
    cy.get(':nth-child(3) > .vr-main-navigation__link').click()
    
    //THEN
    cy.url().should('include', '/onde-aceita.htm')
  })

  it('Verificar que o mapa do Google aparece', () => {
    //GIVEN
    cy.url().should('include', '/onde-aceita.htm')
    
    //WHEN
    cy.contains('Onde usar meu cartão VR?').click()
    
    //THEN
    cy.get('.vr-map__box-results')
  })
})