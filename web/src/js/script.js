let emails = '';

document.addEventListener('DOMContentLoaded', async (event) => {
  const summaryResponse = await fetch(
    'https://attop22rn8.execute-api.us-west-1.amazonaws.com/prod/summary'
  );
  const summary = await summaryResponse.json(); //extract JSON from the http response
  const summaryData = summary.data;

  summaryData.forEach((record) => {
    const cert = record[0].stringValue;
    const unexp = record[1].longValue;
    const exp = record[2].longValue;
    const certId = record[3].longValue;

    const certField = document.createElement('div');
    certField.classList.add('field');
    const link = document.createElement('a');
    link.href = '#';
    link.innerText = cert;
    link.addEventListener('click', async () => {
      await doStuff(certId);
    });
    certField.appendChild(link);
    const unexpField = document.createElement('div');
    unexpField.classList.add('field');
    unexpField.innerHTML = unexp;
    const expField = document.createElement('div');
    expField.classList.add('field');
    expField.classList.add('expired');
    expField.innerHTML = exp;

    const container = document.getElementById('summary-container');
    container.appendChild(certField);
    container.appendChild(unexpField);
    container.appendChild(expField);
  });

  // const certificationsResponse = await fetch(
  //   'https://attop22rn8.execute-api.us-west-1.amazonaws.com/prod/certs'
  // );
  // const certifications = await certificationsResponse.json(); //extract JSON from the http response
  // const certificationsData = certifications.data;

  // const select = document.getElementById('certifications');
  // certificationsData.forEach((record) => {
  //   const option = document.createElement('option');
  //   option.value = record[0].longValue;
  //   option.text = record[1].stringValue;
  //   select.appendChild(option);
  // });

  // const certSelect = document.getElementById('certifications');
  // certSelect.addEventListener('change', async (event) => {
  //   const certId = event.target.value;

  //   const certificationsResponse = await fetch(
  //     `https://attop22rn8.execute-api.us-west-1.amazonaws.com/prod/active/${certId}`
  //   );
  //   const certifications = await certificationsResponse.json(); //extract JSON from the http response
  //   const certificationsData = certifications.data;

  //   const container = document.getElementById('volunteer-container');
  //   container.innerHTML = '';
  //   const nameHeader = document.createElement('div');
  //   nameHeader.classList.add('col-header');
  //   const nraidHeader = document.createElement('div');
  //   nraidHeader.classList.add('col-header');
  //   const certificationHeader = document.createElement('div');
  //   certificationHeader.classList.add('col-header');
  //   const expiresHeader = document.createElement('div');
  //   expiresHeader.classList.add('col-header');
  //   const emailHeader = document.createElement('div');
  //   emailHeader.classList.add('col-header');

  //   nameHeader.innerHTML = 'Name';
  //   nraidHeader.innerHTML = 'NRAID';
  //   certificationHeader.innerHTML = 'Certification';
  //   expiresHeader.innerHTML = 'Expires';
  //   emailHeader.innerHTML =
  //     'Email <i class="fa-solid fa-copy clickable" id="copy-emails">';
  //   container.appendChild(nameHeader);
  //   container.appendChild(nraidHeader);
  //   container.appendChild(certificationHeader);
  //   container.appendChild(expiresHeader);
  //   container.appendChild(emailHeader);

  //   emails = '';
  //   certificationsData.forEach((record) => {
  //     const name = record[1].stringValue;
  //     const nraid = record[2].stringValue;
  //     const certification = record[3].stringValue;
  //     const expires = record[4].stringValue;
  //     const email = record[5].stringValue;

  //     emails += email + ',';

  //     const nameField = document.createElement('div');
  //     nameField.classList.add('field');
  //     nameField.innerHTML = name;
  //     const nraidField = document.createElement('div');
  //     nraidField.classList.add('field');
  //     nraidField.innerHTML = nraid;
  //     // nraid == '-'
  //     //   ? nraid
  //     //   : `<a href="https://www.nrainstructors.org/InstructorAdmin/Verify.aspx" target="_blank">${nraid}</a>`;
  //     const certificationField = document.createElement('div');
  //     certificationField.classList.add('field');
  //     certificationField.innerHTML = certification;
  //     const expiresField = document.createElement('div');
  //     expiresField.classList.add('field');
  //     expiresField.innerHTML = expires;
  //     const emailField = document.createElement('div');
  //     emailField.classList.add('field');
  //     emailField.innerHTML = email;

  //     container.appendChild(nameField);
  //     container.appendChild(nraidField);
  //     container.appendChild(certificationField);
  //     container.appendChild(expiresField);
  //     container.appendChild(emailField);
  //   });

  //   emails = emails.substring(0, emails.length - 1);

  //   const copyEmails = document.getElementById('copy-emails');
  //   copyEmails.addEventListener('click', (event) => {
  //     navigator.clipboard.writeText(emails);
  //     alert('Emails copied to clipboard!');
  //   });
  // });
});

async function doStuff(certId) {
  const certificationsResponse = await fetch(
    `https://attop22rn8.execute-api.us-west-1.amazonaws.com/prod/active/${certId}`
  );
  const certifications = await certificationsResponse.json(); //extract JSON from the http response
  const certificationsData = certifications.data;

  const container = document.getElementById('volunteer-container');
  container.innerHTML = '';
  const nameHeader = document.createElement('div');
  nameHeader.classList.add('col-header');
  const nraidHeader = document.createElement('div');
  nraidHeader.classList.add('col-header');
  const certificationHeader = document.createElement('div');
  certificationHeader.classList.add('col-header');
  const expiresHeader = document.createElement('div');
  expiresHeader.classList.add('col-header');
  const emailHeader = document.createElement('div');
  emailHeader.classList.add('col-header');

  nameHeader.innerHTML = 'Name';
  nraidHeader.innerHTML = 'NRAID';
  certificationHeader.innerHTML = 'Certification';
  expiresHeader.innerHTML = 'Expires';
  emailHeader.innerHTML =
    'Email <i class="fa-solid fa-copy clickable" id="copy-emails">';
  container.appendChild(nameHeader);
  container.appendChild(nraidHeader);
  container.appendChild(certificationHeader);
  container.appendChild(expiresHeader);
  container.appendChild(emailHeader);

  emails = '';
  certificationsData.forEach((record) => {
    const name = record[1].stringValue;
    const nraid = record[2].stringValue;
    const certification = record[3].stringValue;
    const expires = record[4].stringValue;
    const email = record[5].stringValue;

    emails += email + ',';

    const nameField = document.createElement('div');
    nameField.classList.add('field');
    nameField.innerHTML = name;
    const nraidField = document.createElement('div');
    nraidField.classList.add('field');
    nraidField.innerHTML = nraid;
    nraidField.innerHTML =
      nraid == '-'
        ? nraid
        : `<a href="https://www.nrainstructors.org/InstructorAdmin/Verify.aspx" target="_blank">${nraid}</a>`;
    const certificationField = document.createElement('div');
    certificationField.classList.add('field');
    certificationField.innerHTML = certification;
    const expiresField = document.createElement('div');
    expiresField.classList.add('field');
    expiresField.innerHTML = expires;
    const emailField = document.createElement('div');
    emailField.classList.add('field');
    emailField.innerHTML = email;

    container.appendChild(nameField);
    container.appendChild(nraidField);
    container.appendChild(certificationField);
    container.appendChild(expiresField);
    container.appendChild(emailField);
  });

  emails = emails.substring(0, emails.length - 1);

  const copyEmails = document.getElementById('copy-emails');
  copyEmails.addEventListener('click', (event) => {
    navigator.clipboard.writeText(emails);
    alert('Emails copied to clipboard!');
  });
}
