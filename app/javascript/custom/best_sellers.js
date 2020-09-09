
  export const fetchTopList = () => {

  fetch('https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=YOUR_API_KEY/ENV-veriable')
  .then( res => res.json())
  .then( data => {

    let books = data.results.books.splice(0,5);
    books.forEach((book)=>{
      item = document.createElement('li');
      item.innerHTML = ` <div class="book" style="background-image: linear-gradient(rgba(0,0,0,0.1), rgba(0,0,0,0.1)), url(${book.book_image})">
       </div>
       <div>
          <p>${book.description}</p>
       </div>`;
      document.getElementById('best_sellers_list').appendChild(item);
    })
  })
}



