*** Variables ***
*** Variables ***
${SEARCH_BOX}           id=search
${SEARCH_BUTTON}        xpath=//div[@class="actions"]/button[@type="submit"]
${RESULT_LIST}          xpath=(//*[@id="amasty-shopby-product-list"]/div[contains(@class,"products-grid")])[2]/div[contains(@class,"product-items")]/div[@class="product-item-view "]/a[@class="listingWrapperSection"]
${FIRST_RESULT_IMG}     xpath=//div[@id="mtImageContainerMagic"]/div/a[@class="MagicZoom"]
${ADD_TO_CART_BTN}      id=product-addtocart-button
${GO_TO_CART_BUTTON}     xpath=//button[contains(@class,"go-to-cart-btn")]
${CART_PAGE_HEADING}    xpath=//h1[contains(.,'Cart')]
