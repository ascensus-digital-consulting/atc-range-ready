let emails = '';

document.addEventListener('DOMContentLoaded', async (event) => {
  // Obtain volunteers data
  const volunteers = await fetchVolunteers();

  // Obtain certifications data
  const certifications = await fetchCertifications();

  // Calculate the totals for each certification
  const certificationTotals = await calculateCertificationTotals(volunteers);

  // Render certifications summary
  const container = document.getElementById('summary-container');

  Object.entries(certificationTotals).forEach(([key, value]) => {
    const certDiv = document.createElement('div');
    certDiv.classList.add('field');
    certDiv.innerHTML = key;

    const certUnexpDiv = document.createElement('div');
    certUnexpDiv.classList.add('field');
    certUnexpDiv.innerHTML = value;

    const certExpDiv = document.createElement('div');
    certExpDiv.classList.add('field', 'expired');
    certExpDiv.innerHTML = '3';

    container.append(certDiv);
    container.append(certUnexpDiv);
    container.append(certExpDiv);
  });

  // Create array of volunteers from api
  async function fetchVolunteers() {
    const volunteersResponse = await fetch(
      'https://rangeready.targetsports.help/api/volunteers'
    );
    const volunteers = await volunteersResponse.json();
    return volunteers;
  }

  // Create certifications object from api
  async function fetchCertifications() {
    const certificationsResponse = await fetch(
      'https://rangeready.targetsports.help/api/certifications'
    );
    const certifications = await certificationsResponse.json();
    return certifications;
  }

  // Calculate the total number of volunteers for each certification
  async function calculateCertificationTotals(volunteers) {
    const totals = await volunteers.reduce((acc, obj) => {
      for (const key in obj) {
        if (
          obj[key] !== null &&
          obj[key] !== 'First Name' &&
          obj[key] !== 'Last Name' &&
          obj[key] !== 'Merit Badge Counselor' &&
          obj[key] !== 'Email' &&
          obj[key] !== 'Phone' &&
          obj[key] !== 'Phone (alternate)'
        ) {
          acc[key] = (acc[key] || 0) + 1;
        }
      }
      return acc;
    });
    return totals;
  }
});
