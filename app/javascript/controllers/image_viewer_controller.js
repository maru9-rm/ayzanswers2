import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["dialog", "image", "caption", "originalLink"]

  open(event) {
    const button = event.currentTarget

    this.imageTarget.src = button.dataset.imageUrl
    this.imageTarget.alt = button.dataset.imageAlt
    this.captionTarget.textContent = button.dataset.imageAlt
    this.originalLinkTarget.href = button.dataset.originalUrl
    this.dialogTarget.showModal()
  }

  close() {
    this.dialogTarget.close()
    this.clearImage()
  }

  closeOnBackdrop(event) {
    if (event.target === this.dialogTarget) this.close()
  }

  closeOnEscape(event) {
    if (event.key === "Escape") this.clearImage()
  }

  clearImage() {
    this.imageTarget.removeAttribute("src")
  }
}
