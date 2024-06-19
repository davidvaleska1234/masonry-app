document.querySelector('.profile-dropdown-btn').addEventListener('click', function() {
    document.querySelector('.profile-dropdown-list').classList.toggle('active');
});

window.onclick = function(event) {
    if (!event.target.matches('.profile-dropdown-btn')) {
        var dropdowns = document.querySelectorAll('.profile-dropdown-list');
        dropdowns.forEach(function(dropdown) {
            if (dropdown.classList.contains('active')) {
                dropdown.classList.remove('active');
            }
        });
    }
}

function adjustNavItems() {
    const mainNav = document.querySelector('.main-nav');
    const mobileCategories = document.getElementById('mobile-all-categories');
    const mobileWebApp = document.getElementById('mobile-web-app');
    const headerToggler = document.getElementById('headerToggler');

    if (window.innerWidth <= 992) {
        if (!mobileCategories || !mobileWebApp) {
            const allCategories = document.getElementById('all-categories');
            const webApp = document.getElementById('web-app');

            if (allCategories) {
                const cloneAllCategories = allCategories.cloneNode(true);
                cloneAllCategories.id = "mobile-all-categories";
                cloneAllCategories.classList.remove("nav-link");
                cloneAllCategories.classList.add("profile-dropdown-list-item");
                document.querySelector('.profile-dropdown-list').appendChild(cloneAllCategories);
            }

            if (webApp) {
                const cloneWebApp = webApp.cloneNode(true);
                cloneWebApp.id = "mobile-web-app";
                cloneWebApp.classList.remove("nav-link");
                cloneWebApp.classList.add("profile-dropdown-list-item");
                document.querySelector('.profile-dropdown-list').appendChild(cloneWebApp);
            }
        }
        headerToggler.style.display = 'none';
    } else {
        if (mobileCategories && mobileCategories.parentNode) {
            mobileCategories.parentNode.removeChild(mobileCategories);
        }
        if (mobileWebApp && mobileWebApp.parentNode) {
            mobileWebApp.parentNode.removeChild(mobileWebApp);
        }
    }
}

window.addEventListener('resize', adjustNavItems);
window.addEventListener('load', adjustNavItems);