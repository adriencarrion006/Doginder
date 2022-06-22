//  <script src="https://cdnjs.cloudflare.com/ajax/libs/hammer.js/2.0.8/hammer.min.js" integrity="sha512-UXumZrZNiOwnTcZSHLOfcTs0aos2MzBWHXOHOuB0J/R44QB0dwY5JgfbvljXcklVf65Gc4El6RjZ+lnwd2az2g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

const swipe = () => {
  const tinder = document.querySelector('.tinder');
  if (tinder) {
    const tinderContainer = document.querySelector('.tinder');
    const allCards = document.querySelectorAll('.tinder--card');
    const nope = document.getElementById('nope');
    const love = document.getElementById('love');

    function initCards(card, index) {
      const newCards = document.querySelectorAll('.tinder--card:not(.removed)');

      newCards.forEach(function (card, index) {
        card.style.zIndex = allCards.length - index;
        card.style.transform = 'scale(' + (20 - index) / 20 + ') translateY(-' + 30 * index + 'px)';
        card.style.opacity = (10 - index) / 10;
      });

      tinderContainer.classList.add('loaded');

    }

    initCards();

    allCards.forEach(function (el) {
      const hammertime = new Hammer(el);

      hammertime.on('pan', function (event) {
        el.classList.add('moving');
      });

      hammertime.on('pan', function (event) {
        if (event.deltaX === 0) return;
        if (event.center.x === 0 && event.center.y === 0) return;

        //toggle button style on pan
        tinderContainer.classList.toggle('tinder_love', event.deltaX > 0);
        tinderContainer.classList.toggle('tinder_nope', event.deltaX < 0);

        const xMulti = event.deltaX * 0.03;
        const yMulti = event.deltaY / 80;
        const rotate = xMulti * yMulti;

        event.target.style.transform = 'translate(' + event.deltaX + 'px, ' + event.deltaY + 'px) rotate(' + rotate + 'deg)';
      });

      //swipe action
      hammertime.on('panend', function (event) {
        el.classList.remove('moving');
        tinderContainer.classList.remove('tinder_love');
        tinderContainer.classList.remove('tinder_nope');

        const moveOutWidth = document.body.clientWidth;
        const keep = Math.abs(event.deltaX) < 80 || Math.abs(event.velocityX) < 0.5;

        event.target.classList.toggle('removed', !keep);

        if (keep) {
          event.target.style.transform = '';
        } else {
          const endX = Math.max(Math.abs(event.velocityX) * moveOutWidth, moveOutWidth);
          const toX = event.deltaX > 0 ? endX : -endX;
          const endY = Math.abs(event.velocityY) * moveOutWidth;
          const toY = event.deltaY > 0 ? endY : -endY;
          const xMulti = event.deltaX * 0.03;
          const yMulti = event.deltaY / 80;
          const rotate = xMulti * yMulti;

          event.target.style.transform = 'translate(' + toX + 'px, ' + (toY + event.deltaY) + 'px) rotate(' + rotate + 'deg)';

          // send different http request depending on the pan
          if (event.additionalEvent == 'panright') {
            like(event.target, true)
          } else if (event.additionalEvent == 'panleft') {
            like(event.target, false)
          }

          // initiate remaining cards
          initCards();
        }
      });
    });

    // send ajax http get request to matches controller with like=true params
    function like(target, like) {
      // console.log(target.dataset.id, like)
      const url = `/dogs/${target.dataset.id}/edit/?like=${like}`
      // const url = `/dogs/${target.dataset.id}/matches/new/?like=${like}`

      fetch(url, {
        method: 'GET',
        headers: {
          'Accept': 'text/plain',
          // 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') // X-CSRF-TOKEN is used for Ruby on Rails Tokens
        },
      })
    }

    //buttons actions
    function createButtonListener(love) {
      return function (event) {
        const cards = document.querySelectorAll('.tinder--card:not(.removed)');
        const moveOutWidth = document.body.clientWidth * 1.5;

        if (!cards.length) return false;

        const card = cards[0];
        card.classList.add('removed');
        if (love) {
          card.style.transform = 'translate(' + moveOutWidth + 'px, -100px) rotate(-30deg)';
          like(card, true)
        } else {
          card.style.transform = 'translate(-' + moveOutWidth + 'px, -100px) rotate(30deg)';
          like(card, false)
        }

        initCards();

        event.preventDefault();
      };
    }

    // buttons actions listeners
    const nopeListener = createButtonListener(false);
    const loveListener = createButtonListener(true);

    nope.addEventListener('click', nopeListener);
    love.addEventListener('click', loveListener);

  }
};

export { swipe }
