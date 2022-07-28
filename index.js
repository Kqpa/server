let text = "";

document.addEventListener("DOMContentLoaded", () => {
  fetch("./data.json")
    .then(function (response) {
      return response.json();
    })
    .then(function (data) {
      text = data.text;
      const copyText = document.querySelector("#copyText");
      copyText.innerText = text;
    });
});

function copy() {
  const button = document.querySelector("#button");
  navigator.clipboard.writeText(text);
  button.innerText = "Copied to Clipboard";
  setTimeout(() => {
    button.innerText = "Copy";
  }, 3000);
}
