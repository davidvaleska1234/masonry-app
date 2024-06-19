document.addEventListener("DOMContentLoaded", function () {
    const headerToggler = document.getElementById('headerToggler');
    headerToggler.addEventListener('click', function() {
        const navbarCollapse = document.getElementById('navbarSupportedContent');
        navbarCollapse.classList.toggle('show');
    });

    function filterCards(filterText) {
        const gridItems = document.querySelectorAll('.grid-item');
        gridItems.forEach((item, index) => {
            const title = item.querySelector('.card-title').textContent.toLowerCase();
            if (filterText === 'all-categories' || title.includes(filterText)) {
                item.style.display = 'block';
                // Determine card size and orientation dynamically based on index
                const sizeClasses = [
                    'grid-item-span1-1', 'grid-item-span1-2',
                    'grid-item-span2-1', 'grid-item-span2-2',
                    'grid-item-span3-1', 'grid-item-span3-2',
                    'grid-item-span4-1', 'grid-item-span4-2'
                ];
                const currentSizeClass = sizeClasses[index % sizeClasses.length];
                item.classList.remove(...sizeClasses);
                item.classList.add(currentSizeClass);
            } else {
                item.style.display = 'none';
            }
        });
        // Reinitialize masonry layout after filtering
        // const elem = document.querySelector('.grid-container');
        // const masonry = new Masonry(elem, {
        //     itemSelector: '.grid-item',
        //     columnWidth: '.grid-item',
        //     percentPosition: true,
        //     gutter: 10
        // });
        // masonry.layout();
    }

    document.getElementById('all-categories').addEventListener('click', function() {
        filterCards('all-categories');
    });

    document.getElementById('web-app').addEventListener('click', function() {
        filterCards('system');
    });

    // Initialize masonry layout
    // const elem = document.querySelector('.grid-container');
    // const masonry = new Masonry(elem, {
    //     itemSelector: '.grid-item',
    //     columnWidth: '.grid-item',
    //     percentPosition: true,
    //     gutter: 10
    // });
});