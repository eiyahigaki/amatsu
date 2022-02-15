window.addEventListener('load', function(){
  const titleInput = document.getElementById("job_title");
  const characterCount = document.getElementById("character-count");

  titleInput.addEventListener("input", () => {
    characterCount.innerHTML = titleInput.value.length;
  });
});