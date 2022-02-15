window.addEventListener('load', () => {
  const titleInput = document.getElementById("job_title");
  const characterCount = document.getElementById("character_count");

  titleInput.addEventListener("input", () => {
    const titleCount = titleInput.length;
    console.log(titleCount);
    // characterCount.innerHTML = titleCount;  
  });
});