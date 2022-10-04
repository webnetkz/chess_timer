// Получение данных

let params = window.location.search.replace('?','').split('&').reduce(function(p,e){var a = e.split('=');p[ decodeURIComponent(a[0])] = decodeURIComponent(a[1]);return p;},{});
const ORD = params['ord'];


getData("orderData", H+"/app/core/order/getData.php?ord="+ORD);
window.onload = function () {
  let orderData = JSON.parse(localStorage.getItem("orderData"));

  if(orderData.count_days) {
    //console.log(orderData.count_days);
    let count_days = JSON.parse(orderData.count_days);

    let days = count_days[0]['count_days'];
    if(days != null) {
      localStorage.setItem('count_days', days);
    } else {
      localStorage.setItem('count_days', "1");
    }
  }

  if(orderData.all_mans) {
    let all_mans = JSON.parse(orderData.all_mans);
    all_mans = all_mans.all_mans;
    if(all_mans != null) {
      localStorage.setItem('all_mans', all_mans);
    } else {
      localStorage.setItem('all_mans', "0");
    }
  }
  if(orderData.adult) {
    let adult = JSON.parse(orderData.adult);
    adult = adult.adult;
    if(adult != null) {
      localStorage.setItem('adult', adult);
    } else {
      localStorage.setItem('adult', "0");
    }
  }
  if(orderData.child) {
    let child = JSON.parse(orderData.child);
    child = child.child;
    if(child != null) {
      localStorage.setItem('child', child);
    } else {
      localStorage.setItem('child', "0");
    }
  }
  if(orderData.small_child) {
    let small_child = JSON.parse(orderData.small_child);
    small_child = small_child.small_child;
    if(small_child != null) {
      localStorage.setItem('small_child', small_child);
    } else {
      localStorage.setItem('small_child', "0");
    }
  }
  if(orderData.baby) {
    let baby = JSON.parse(orderData.baby);
    baby = baby.baby;
    if(baby != null) {
      localStorage.setItem('baby', baby);
    } else {
      localStorage.setItem('baby', "0");
    }
  }
  if(orderData.guide) {
    let guide = JSON.parse(orderData.guide);
    guide = guide.guide;
    if(guide != null) {
      localStorage.setItem('guide', guide);
    } else {
      localStorage.setItem('guide', "0");
    }
  }


  if(orderData.lang) {
    let lang = JSON.parse(orderData.lang);

    let res = lang.result;
    if(res != null || false) {
      localStorage.setItem('lang', res);
    } else {
      localStorage.setItem('lang', "-");
    }
  }
  if(orderData.country) {
    let country = JSON.parse(orderData.country);

    let res = country.result;
    if(res != null || false) {
      localStorage.setItem('country', res);
    } else {
      localStorage.setItem('country', "-");
    }
  }
  if(orderData.hotel) {
    let hotel = JSON.parse(orderData.hotel);

    let res = hotel.result;
    if(res != null || false) {
      localStorage.setItem('hotel', res);
    } else {
      localStorage.setItem('hotel', "-");
    }
  }
  if(orderData.service_class) {
    let service_class = JSON.parse(orderData.service_class);

    let res = service_class.result;
    if(res != null || false) {
      localStorage.setItem('class', res);
    } else {
      localStorage.setItem('class', "-");
    }
  }

  if(orderData.start_date) {
    let start_date = JSON.parse(orderData.start_date);

    let res = start_date[0].start_date;
    if(res != null || false) {
      localStorage.setItem('start_date', res);
    } else {
      localStorage.setItem('start_date', "-");
    }
  }

  if(orderData.rumming_one) {
    let rumming_one = JSON.parse(orderData.rumming_one);
    rumming_one = rumming_one.rumming_one;

    if(rumming_one != null) {
      localStorage.setItem('rumming_one', rumming_one);
    } else {
      localStorage.setItem('rumming_one', "0");
    }
  }
  if(orderData.rumming_double) {
    let rumming_double = JSON.parse(orderData.rumming_double);
    rumming_double = rumming_double.rumming_double;

    if(rumming_double != null) {
      localStorage.setItem('rumming_double', rumming_double);
    } else {
      localStorage.setItem('rumming_double', "0");
    }
  }
  if(orderData.rumming_triple) {
    let rumming_triple = JSON.parse(orderData.rumming_triple);
    rumming_triple = rumming_triple.rumming_triple;

    if(rumming_triple != null) {
      localStorage.setItem('rumming_triple', rumming_triple);
    } else {
      localStorage.setItem('rumming_triple', "0");
    }
  }
  checkSelects();
}

getData("selectsData", H+"/app/core/data/getSelects.php");
let selectsData = JSON.parse(localStorage.getItem("selectsData"));

let season = JSON.parse(selectsData.season);
let langs = JSON.parse(selectsData.langs);
let countries = JSON.parse(selectsData.countries);
let serviceClass = JSON.parse(selectsData.service_class);
let hotelStars = JSON.parse(selectsData.hotel_stars);






