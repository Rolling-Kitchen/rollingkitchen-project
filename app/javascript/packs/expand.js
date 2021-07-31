const buttonExpands = document.querySelectorAll(
  ".btn-expand"
)
console.log(buttonExpands)
buttonExpands.forEach(button => button.addEventListener(
  "click", (event) => {
    console.log(event.currentTarget)
    event.currentTarget.parentNode.parentNode.childNodes.forEach(
      element => {
        if (element.classList && !Array.from(element.classList).includes('hidden') && Array.from(element.classList).includes('expand')) {
          element.classList.add("hidden");
        } else if (element.classList && Array.from(element.classList).includes('hidden') && Array.from(element.classList).includes('expand')) {
          element.classList.remove("hidden");

        }
      }
    )
  }
))
