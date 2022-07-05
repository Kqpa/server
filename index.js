function copy(){
    const textToCopy = document.querySelector("#copyText");
  const button = document.querySelector("#button");
  
     navigator.clipboard.writeText(textToCopy.innerText)
  
  button.innerText = "Copied IP"
  
  setTimeout(() => {
    button.innerText = "Copy"
  }, 3000)
  
}