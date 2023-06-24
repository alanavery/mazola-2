import $ from 'jquery';

class Search {
  // Area 1: describe and create/initiate the object
  constructor() {
    this.openButton = $('.js-search-trigger');
    this.closeButton = $('.search-overlay__close');
    this.searchOverlay = $('.search-overlay');
    this.events();
  }

  // Area 2: events
  events() {
    this.openButton.on('click', this.openOverlay.bind(this));
    this.closeButton.on('click', this.closeOverlay.bind(this));
  }

  // Area 3: methods (function, action, etc.)
  openOverlay() {
    this.searchOverlay.addClass('search-overlay--active');
  }

  closeOverlay() {
    this.searchOverlay.removeClass('search-overlay--active');
  }
}

export default Search;
