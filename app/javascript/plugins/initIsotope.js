import Isotope from 'isotope-layout';

const initIsotope = () => {
    const grid = document.querySelector('.holder');
    const iso = new Isotope( grid, {
    // options...
        itemSelector: '.card',
        masonry: {
            columnWidth: 200
        }
    });
};

export { initIsotope };