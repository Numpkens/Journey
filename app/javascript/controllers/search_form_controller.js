import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["form"];

  initialize() {
    this.submit = debounce(this.submit.bind(this), 300);
  }

  search() {
    this.submit();
  }

  submit() {
    this.element.requestSubmit();
  }
}

function debounce(func, wait) {
  let timeout;
  return function executedFunction(...args) {
    const later = () => {
      clearTimeout(timeout);
      func(...args);
    };
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
  };
}
