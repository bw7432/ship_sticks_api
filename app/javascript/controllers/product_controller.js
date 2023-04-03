import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    typeOf: String,
    length: Number,
    // typeOf: String
  }
  connect() {
    // this.element.textContent = "Hello World!"
    console.log('testing')
  }

  recalculate() {
    console.log('reclaculate')
    console.log(this.lengthValue)
    // console.log(this.typeOfTarget.value)
    // this.totalTarget.value = this.quantityTarget.value * this.priceTarget.value
  }

  getProducts() {
    console.log('get products')
  }
}
