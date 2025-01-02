<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>BookSaw - Library Management</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/icomoon/icomoon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/cart.css">

</head>
<body data-bs-spy="scroll" data-bs-target="#header" tabindex="0">

<div id="header-wrap">
    <header id="header">
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-2">
                    <div class="main-logo">
                        <a href="index.jsp"><img src="${pageContext.request.contextPath}/static/assets/images/main-logo.png" alt="logo"></a>
                    </div>

                </div>

                <div class="col-md-10">

                    <nav id="navbar">
                        <div class="main-menu stellarnav">
                            <ul class="menu-list">
                                <li class="menu-item active"><a href="#home">Home</a></li>
                                <li class="menu-item"><a href="#featured-books" class="nav-link">Featured</a></li>
                                <li class="menu-item"><a href="#popular-books" class="nav-link">Popular</a></li>
                                <li class="menu-item"><a href="#special-offer" class="nav-link">Offer</a></li>
                                <li class="menu-item"><a href="#latest-blog" class="nav-link">Articles</a></li>
                                <li class="menu-item">
                                    <a href="clientApp?page=login" class="user-account for-buy"><i
                                            class="icon icon-user"></i><span>Account</span></a>
                                </li>
                                <li class="menu-item">
                                    <a href="#" class="cart for-buy" id="navbar-cart"><i class="icon icon-clipboard"></i><span>Cart:(0
											$)</span></a>
                                </li>
                            </ul>

                            <div class="hamburger">
                                <span class="bar"></span>
                                <span class="bar"></span>
                                <span class="bar"></span>
                            </div>

                        </div>
                    </nav>

                </div>

            </div>
        </div>
    </header>

</div><!--header-wrap-->

<div id="cart-sidebar">
    <button id="close-cart">Close</button>
    <ul id="cart-items"></ul>
</div>

<section id="billboard">

    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <button class="prev slick-arrow">
                    <i class="icon icon-arrow-left"></i>
                </button>

                <div class="main-slider pattern-overlay">
                    <div class="slider-item">
                        <div class="banner-content">
                            <h2 class="banner-title">Life of the Wild</h2>
                            <p>*The Wild Life* is an inspiring adventure novel that takes readers on a journey through the untamed wilderness.
                                It explores themes of survival, human resilience, and the deep connection between humans and nature.
                            </p>
                            <div class="btn-wrap">
                                <a href="#" class="btn btn-outline-accent btn-accent-arrow">Read More<i
                                        class="icon icon-ns-arrow-right"></i></a>
                            </div>
                        </div><!--banner-content-->
                        <img src="${pageContext.request.contextPath}/static/assets/images/main-banner1.jpg" alt="banner" class="banner-image">
                    </div><!--slider-item-->

                    <div class="slider-item">
                        <div class="banner-content">
                            <h2 class="banner-title">Birds gonna be Happy</h2>
                            <p>*Birds Gonna Be Happy* is a joyful story about birds embracing the beauty of nature and the challenges of life with optimism.
                                It celebrates themes of happiness, freedom, and unity.</p>
                            <div class="btn-wrap">
                                <a href="#" class="btn btn-outline-accent btn-accent-arrow">Read More<i
                                        class="icon icon-ns-arrow-right"></i></a>
                            </div>
                        </div><!--banner-content-->
                        <img src="${pageContext.request.contextPath}/static/assets/images/main-banner2.jpg" alt="banner" class="banner-image">
                    </div><!--slider-item-->

                </div><!--slider-->

                <button class="next slick-arrow">
                    <i class="icon icon-arrow-right"></i>
                </button>

            </div>
        </div>
    </div>

</section>

<section id="client-holder" data-aos="fade-up">
    <div class="container">
        <div class="row">
            <div class="inner-content">
                <div class="logo-wrap">
                    <div class="grid">
                        <a href="#"><img src="${pageContext.request.contextPath}/static/assets/images/client-image1.png" alt="client"></a>
                        <a href="#"><img src="${pageContext.request.contextPath}/static/assets/images/client-image2.png" alt="client"></a>
                        <a href="#"><img src="${pageContext.request.contextPath}/static/assets/images/client-image3.png" alt="client"></a>
                        <a href="#"><img src="${pageContext.request.contextPath}/static/assets/images/client-image4.png" alt="client"></a>
                        <a href="#"><img src="${pageContext.request.contextPath}/static/assets/images/client-image5.png" alt="client"></a>
                    </div>
                </div><!--image-holder-->
            </div>
        </div>
    </div>
</section>

<section id="featured-books" class="py-5 my-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <div class="section-header align-center">
                    <div class="title">
                        <span>Some quality items</span>
                    </div>
                    <h2 class="section-title">Featured Books</h2>
                </div>

                <div class="product-list" data-aos="fade-up">
                    <div class="row">

                        <div class="col-md-3">
                            <div class="product-item">
                                <figure class="product-style">
                                    <img src="${pageContext.request.contextPath}/static/assets/images/product-item1.jpg" alt="Books" class="product-item">
                                    <button type="button" class="add-to-cart" data-id="1" data-name="Simple way of piece life" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                </figure>
                                <figcaption>
                                    <h3>Simple way of piece life</h3>
                                    <span>Armor Ramsey</span>
                                    <div class="item-price">$ 40.00</div>
                                </figcaption>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="product-item">
                                <figure class="product-style">
                                    <img src="${pageContext.request.contextPath}/static/assets/images/product-item2.jpg" alt="Books" class="product-item">
                                    <button type="button" class="add-to-cart" data-id="2" data-name="Great travel at desert" data-price="38.00" onclick="addToCart(this)">Add to Cart</button>
                                </figure>
                                <figcaption>
                                    <h3>Great travel at desert</h3>
                                    <span>Sanchit Howdy</span>
                                    <div class="item-price">$ 38.00</div>
                                </figcaption>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="product-item">
                                <figure class="product-style">
                                    <img src="${pageContext.request.contextPath}/static/assets/images/product-item3.jpg" alt="Books" class="product-item">
                                    <button type="button" class="add-to-cart" data-id="3" data-name="The lady beauty Scarlett" data-price="45.00" onclick="addToCart(this)">Add to Cart</button>
                                </figure>
                                <figcaption>
                                    <h3>The lady beauty Scarlett</h3>
                                    <span>Arthur Doyle</span>
                                    <div class="item-price">$ 45.00</div>

                                </figcaption>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="product-item">
                                <figure class="product-style">
                                    <img src="${pageContext.request.contextPath}/static/assets/images/product-item4.jpg" alt="Books" class="product-item">
                                    <button type="button" class="add-to-cart" data-id="4" data-name="Once upon a time" data-price="35.00" onclick="addToCart(this)">Add to Cart</button>
                                </figure>
                                <figcaption>
                                    <h3>Once upon a time</h3>
                                    <span>Klien Marry</span>
                                    <div class="item-price">$ 35.00</div>
                                </figcaption>
                            </div>
                        </div>

                    </div><!--ft-books-slider-->
                </div><!--grid-->


            </div><!--inner-content-->
        </div>

        <div class="row">
            <div class="col-md-12">

                <div class="btn-wrap align-right">
                    <a href="#" class="btn-accent-arrow">View all products <i
                            class="icon icon-ns-arrow-right"></i></a>
                </div>

            </div>
        </div>
    </div>
</section>

<section id="best-selling" class="leaf-pattern-overlay">
    <div class="corner-pattern-overlay"></div>
    <div class="container">
        <div class="row justify-content-center">

            <div class="col-md-8">

                <div class="row">

                    <div class="col-md-6">
                        <figure class="products-thumb">
                            <img src="${pageContext.request.contextPath}/static/assets/images/single-image.jpg" alt="book" class="single-image">
                        </figure>
                    </div>

                    <div class="col-md-6">
                        <div class="product-entry">
                            <h2 class="section-title divider">Best Selling Book</h2>

                            <div class="products-content">
                                <div class="author-name">By Timbur Hood</div>
                                <h3 class="item-title">Birds gonna be happy</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu feugiat amet,
                                    libero ipsum enim pharetra hac.</p>
                                <div class="item-price">$ 45.00</div>
                                <div class="btn-wrap">
                                    <a href="#" class="btn-accent-arrow">shop it now <i
                                            class="icon icon-ns-arrow-right"></i></a>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- / row -->

            </div>

        </div>
    </div>
</section>

<section id="popular-books" class="bookshelf py-5 my-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <div class="section-header align-center">
                    <div class="title">
                        <span>Some quality items</span>
                    </div>
                    <h2 class="section-title">Popular Books</h2>
                </div>

                <ul class="tabs">
                    <li data-tab-target="#all-genre" class="active tab">All Genre</li>
                    <li data-tab-target="#business" class="tab">Business</li>
                    <li data-tab-target="#technology" class="tab">Technology</li>
                    <li data-tab-target="#romantic" class="tab">Romantic</li>
                    <li data-tab-target="#adventure" class="tab">Adventure</li>
                    <li data-tab-target="#fictional" class="tab">Fictional</li>
                </ul>

                <div class="tab-content">
                    <div id="all-genre" data-tab-content class="active">
                        <div class="row">

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item1.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="5" data-name="Portrait photography" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Portrait photography</h3>
                                        <span>Adam Silber</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item2.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="6" data-name="Once upon a time" data-price="35.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Once upon a time</h3>
                                        <span>Klien Marry</span>
                                        <div class="item-price">$ 35.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item3.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="7" data-name="Tips of simple lifestyle" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Tips of simple lifestyle</h3>
                                        <span>Bratt Smith</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item4.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="8" data-name="Just felt from outside" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Just felt from outside</h3>
                                        <span>Nicole Wilson</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                        </div>
                        <div class="row">

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item5.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="9" data-name="Peaceful Enlightment" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Peaceful Enlightment</h3>
                                        <span>Marmik Lama</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item6.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="10" data-name="Great travel at desert" data-price="50.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Great travel at desert</h3>
                                        <span>Sanchit Howdy</span>
                                        <div class="item-price">$ 50.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item7.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="11" data-name="Life among the pirates" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Life among the pirates</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item8.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="1" data-name="Simple way of piece life" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Simple way of piece life</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div id="business" data-tab-content>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item2.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="9" data-name="Peaceful Enlightment" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Peaceful Enlightment</h3>
                                        <span>Marmik Lama</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item4.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="12" data-name="Great travel at desert" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Great travel at desert</h3>
                                        <span>Sanchit Howdy</span>
                                        <div class="item-price">$ 20.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item6.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="11" data-name="Life among the pirates" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Life among the pirates</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item8.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="1" data-name="Simple way of piece life" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Simple way of piece life</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div id="technology" data-tab-content>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item1.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="9" data-name="Peaceful Enlightment" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Peaceful Enlightment</h3>
                                        <span>Marmik Lama</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item3.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="12" data-name="Great travel at desert" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Great travel at desert</h3>
                                        <span>Sanchit Howdy</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item5.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="11" data-name="Life among the pirates" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Life among the pirates</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item7.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="1" data-name="Simple way of piece life" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Simple way of piece life</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="romantic" data-tab-content>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item1.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="9" data-name="Peaceful Enlightment" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Peaceful Enlightment</h3>
                                        <span>Marmik Lama</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item3.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="12" data-name="Great travel at desert" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Great travel at desert</h3>
                                        <span>Sanchit Howdy</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item5.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="11" data-name="Life among the pirates" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Life among the pirates</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item7.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="1" data-name="Simple way of piece life" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Simple way of piece life</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="adventure" data-tab-content>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item5.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="11" data-name="Life among the pirates" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Life among the pirates</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item7.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="1" data-name="Simple way of piece life" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Simple way of piece life</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="fictional" data-tab-content>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item5.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="11" data-name="Life among the pirates" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Life among the pirates</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <img src="${pageContext.request.contextPath}/static/assets/images/tab-item7.jpg" alt="Books" class="product-item">
                                        <button type="button" class="add-to-cart" data-id="1" data-name="Simple way of piece life" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                                    </figure>
                                    <figcaption>
                                        <h3>Simple way of piece life</h3>
                                        <span>Armor Ramsey</span>
                                        <div class="item-price">$ 40.00</div>
                                    </figcaption>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div><!--inner-tabs-->

        </div>
    </div>
</section>

<section id="quotation" class="align-center pb-5 mb-5">
    <div class="inner-content">
        <h2 class="section-title divider">Quote of the day</h2>
        <blockquote data-aos="fade-up">
            <q>“The more that you read, the more things you will know. The more that you learn, the more places
                you’ll go.”</q>
            <div class="author-name">Dr. Seuss</div>
        </blockquote>
    </div>
</section>

<section id="special-offer" class="bookshelf pb-5 mb-5">

    <div class="section-header align-center">
        <div class="title">
            <span>Grab your opportunity</span>
        </div>
        <h2 class="section-title">Books with offer</h2>
    </div>

    <div class="container">
        <div class="row">
            <div class="inner-content">
                <div class="product-list" data-aos="fade-up">
                    <div class="grid product-grid">
                        <div class="product-item">
                            <figure class="product-style">
                                <img src="${pageContext.request.contextPath}/static/assets/images/product-item5.jpg" alt="Books" class="product-item">
                                <button type="button" class="add-to-cart" data-id="1" data-name="Simple way of piece life" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                            </figure>
                            <figcaption>
                                <h3>Simple way of piece life</h3>
                                <span>Armor Ramsey</span>
                                <div class="item-price">
                                    <span class="prev-price">$ 50.00</span>$ 40.00
                                </div>
                        </div>
                        </figcaption>

                        <div class="product-item">
                            <figure class="product-style">
                                <img src="${pageContext.request.contextPath}/static/assets/images/product-item6.jpg" alt="Books" class="product-item">
                                <button type="button" class="add-to-cart" data-id="12" data-name="Great travel at desert" data-price="30.00" onclick="addToCart(this)">Add to Cart</button>
                            </figure>
                            <figcaption>
                                <h3>Great travel at desert</h3>
                                <span>Sanchit Howdy</span>
                                <div class="item-price">
                                    <span class="prev-price">$ 38.00</span>$ 30.00
                                </div>
                        </div>
                        </figcaption>

                        <div class="product-item">
                            <figure class="product-style">
                                <img src="${pageContext.request.contextPath}/static/assets/images/product-item7.jpg" alt="Books" class="product-item">
                                <button type="button" class="add-to-cart" data-id="15" data-name="The lady beauty Scarlett" data-price="35.00" onclick="addToCart(this)">Add to Cart</button>
                            </figure>
                            <figcaption>
                                <h3>The lady beauty Scarlett</h3>
                                <span>Arthur Doyle</span>
                                <div class="item-price">
                                    <span class="prev-price">$ 45.00</span>$ 35.00
                                </div>
                        </div>
                        </figcaption>

                        <div class="product-item">
                            <figure class="product-style">
                                <img src="${pageContext.request.contextPath}/static/assets/images/product-item8.jpg" alt="Books" class="product-item">
                                <button type="button" class="add-to-cart" data-id="16" data-name="Once upon a time" data-price="15.00" onclick="addToCart(this)">Add to Cart</button>
                            </figure>
                            <figcaption>
                                <h3>Once upon a time</h3>
                                <span>Klien Marry</span>
                                <div class="item-price">
                                    <span class="prev-price">$ 35.00</span>$ 15.00
                                </div>
                        </div>
                        </figcaption>

                        <div class="product-item">
                            <figure class="product-style">
                                <img src="${pageContext.request.contextPath}/static/assets/images/product-item2.jpg" alt="Books" class="product-item">
                                <button type="button" class="add-to-cart" data-id="1" data-name="Simple way of piece life" data-price="40.00" onclick="addToCart(this)">Add to Cart</button>
                            </figure>
                            <figcaption>
                                <h3>Simple way of piece life</h3>
                                <span>Armor Ramsey</span>
                                <div class="item-price">$ 40.00</div>
                            </figcaption>
                        </div>
                    </div><!--grid-->
                </div>
            </div><!--inner-content-->
        </div>
    </div>
</section>

<section id="latest-blog" class="py-5 my-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <div class="section-header align-center">
                    <div class="title">
                        <span>Read our articles</span>
                    </div>
                    <h2 class="section-title">Latest Articles</h2>
                </div>

                <div class="row">

                    <div class="col-md-4">

                        <article class="column" data-aos="fade-up">

                            <figure>
                                <a href="#" class="image-hvr-effect">
                                    <img src="${pageContext.request.contextPath}/static/assets/images/post-img1.jpg" alt="post" class="post-image">
                                </a>
                            </figure>

                            <div class="post-item">
                                <div class="meta-date">Mar 30, 2021</div>
                                <h3><a href="#">Reading books always makes the moments happy</a></h3>

                                <div class="links-element">
                                    <div class="categories">inspiration</div>
                                    <div class="social-links">
                                        <ul>
                                            <li>
                                                <a href="#"><i class="icon icon-facebook"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="icon icon-twitter"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="icon icon-behance-square"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--links-element-->

                            </div>
                        </article>

                    </div>
                    <div class="col-md-4">

                        <article class="column" data-aos="fade-up" data-aos-delay="200">
                            <figure>
                                <a href="#" class="image-hvr-effect">
                                    <img src="${pageContext.request.contextPath}/static/assets/images/post-img2.jpg" alt="post" class="post-image">
                                </a>
                            </figure>
                            <div class="post-item">
                                <div class="meta-date">Mar 29, 2021</div>
                                <h3><a href="#">Reading books always makes the moments happy</a></h3>

                                <div class="links-element">
                                    <div class="categories">inspiration</div>
                                    <div class="social-links">
                                        <ul>
                                            <li>
                                                <a href="#"><i class="icon icon-facebook"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="icon icon-twitter"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="icon icon-behance-square"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--links-element-->

                            </div>
                        </article>

                    </div>
                    <div class="col-md-4">

                        <article class="column" data-aos="fade-up" data-aos-delay="400">
                            <figure>
                                <a href="#" class="image-hvr-effect">
                                    <img src="${pageContext.request.contextPath}/static/assets/images/post-img3.jpg" alt="post" class="post-image">
                                </a>
                            </figure>
                            <div class="post-item">
                                <div class="meta-date">Feb 27, 2021</div>
                                <h3><a href="#">Reading books always makes the moments happy</a></h3>

                                <div class="links-element">
                                    <div class="categories">inspiration</div>
                                    <div class="social-links">
                                        <ul>
                                            <li>
                                                <a href="#"><i class="icon icon-facebook"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="icon icon-twitter"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="icon icon-behance-square"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--links-element-->

                            </div>
                        </article>

                    </div>

                </div>

                <div class="row">

                    <div class="btn-wrap align-center">
                        <a href="#" class="btn btn-outline-accent btn-accent-arrow" tabindex="0">Read All Articles<i
                                class="icon icon-ns-arrow-right"></i></a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<footer id="footer">
    <div class="container">
        <div class="row">

            <div class="col-md-4">

                <div class="footer-item">
                    <div class="company-brand">
                        <img src="${pageContext.request.contextPath}/static/assets/images/main-logo.png" alt="logo" class="footer-logo">
                        <p>A library is a place that collects and provides access to books and digital resources.
                            It supports learning, research, and literacy.
                            Libraries serve various communities through materials, programs, and services.</p>
                    </div>
                </div>

            </div>

            <div class="col-md-2">

                <div class="footer-menu">
                    <h5>About Us</h5>
                    <ul class="menu-list">
                        <li class="menu-item">
                            <a href="#">vision</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">articles </a>
                        </li>
                        <li class="menu-item">
                            <a href="#">careers</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">service terms</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">donate</a>
                        </li>
                    </ul>
                </div>

            </div>
            <div class="col-md-2">

                <div class="footer-menu">
                    <h5>Discover</h5>
                    <ul class="menu-list">
                        <li class="menu-item">
                            <a href="#">Home</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">Books</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">Authors</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">Subjects</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">Advanced Search</a>
                        </li>
                    </ul>
                </div>

            </div>
            <div class="col-md-2">

                <div class="footer-menu">
                    <h5>My account</h5>
                    <ul class="menu-list">
                        <li class="menu-item">
                            <a href="#">Sign In</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">View Cart</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">My Wishtlist</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">Track My Order</a>
                        </li>
                    </ul>
                </div>

            </div>
            <div class="col-md-2">

                <div class="footer-menu">
                    <h5>Help</h5>
                    <ul class="menu-list">
                        <li class="menu-item">
                            <a href="#">Help center</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">Report a problem</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">Suggesting edits</a>
                        </li>
                        <li class="menu-item">
                            <a href="#">Contact us</a>
                        </li>
                    </ul>
                </div>

            </div>

        </div>
        <!-- / row -->

    </div>
</footer>

<div id="footer-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <div class="copyright">
                    <div class="row">

                        <div class="col-md-6">
                            <p>© 2025 All rights reserved</p>
                        </div>

                        <div class="col-md-6">
                            <div class="social-links align-right">
                                <ul>
                                    <li>
                                        <a href="#"><i class="icon icon-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="icon icon-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="icon icon-youtube-play"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="icon icon-behance-square"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div><!--grid-->

            </div><!--footer-bottom-content-->
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/static/assets/js/cart.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/jquery-1.11.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/script.js"></script>
</body>
</html>
