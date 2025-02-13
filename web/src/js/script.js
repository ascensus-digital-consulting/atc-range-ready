let emails = '';

document.addEventListener('DOMContentLoaded', async (event) => {
  // Obtain volunteers data
  const volunteersResponse = await fetch(
    'https://rangeready.targetsports.help/api/volunteers'
  );
  const volunteersJson = await volunteersResponse.json();
  console.log(volunteersJson);

  // Obtain certifications data
  const certificationsResponse = await fetch(
    'https://rangeready.targetsports.help/api/certifications'
  );
  const certificationsJson = await certificationsResponse.json();
});
