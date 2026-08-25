document.addEventListener('DOMContentLoaded', () => {
  const header = document.querySelector('.site-header');
  const menuButton = document.querySelector('.hamburger');

  if (header && menuButton) {
    menuButton.addEventListener('click', () => {
      header.classList.toggle('open');
    });
  }

  const tabButtons = document.querySelectorAll('[data-tab]');

  tabButtons.forEach((button) => {
    button.addEventListener('click', () => {
      tabButtons.forEach((tabButton) => tabButton.classList.remove('active'));
      button.classList.add('active');
    });
  });
});
