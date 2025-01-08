<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
     session = request.getSession(false);
    if (session == null || !"client".equals(session.getAttribute("role"))) {
        response.sendRedirect(request.getContextPath() + "/clientApp?page=login");
        return;
    }
%>
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

                        <c:forEach var="book" items="${books}">
                            <div class="col-md-3">
                                <div class="product-item">
                                    <figure class="product-style">
                                        <!-- Dynamic image path -->
                                        <img src="<c:out value='${pageContext.request.contextPath}/static/${book.photo}' />"
                                             alt="<c:out value='${book.title}' />" class="product-item">
                                        <!-- Emprunt Button -->
                                        <button type="button" class="add-to-cart btn btn-primary"
                                                data-id="${book.id}"
                                                data-name="${book.title}"
                                                data-author="${book.author}"
                                                onclick="openEmpruntForm('${book.id}', '${book.title}', '${book.author}')">
                                            Emprunt
                                        </button>
                                    </figure>
                                    <figcaption>
                                        <h3><c:out value="${book.title}" /></h3>
                                        <span><c:out value="${book.author}" /></span>
                                    </figcaption>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<!-- Modal for Emprunt Form -->
<div id="empruntFormModal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Emprunt Form</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="empruntForm" action="${pageContext.request.contextPath}/emprunt" method="post">
                    <input type="hidden" id="bookId" name="livreId">
                    <div class="mb-3">
                        <label for="bookTitle" class="form-label">Book Title</label>
                        <input type="text" class="form-control" id="bookTitle" name="title" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="bookAuthor" class="form-label">Book Author</label>
                        <input type="text" class="form-control" id="bookAuthor" name="author" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="clientId" class="form-label">Client ID</label>
                        <input type="text" class="form-control" id="clientId" name="clientId" required>
                    </div>
                    <div class="mb-3">
                        <label for="dateEmprunt" class="form-label">Date Emprunt</label>
                        <input type="date" class="form-control" id="dateEmprunt" name="dateEmprunt" required>
                    </div>
                    <div class="mb-3">
                        <label for="dateRetour" class="form-label">Date Retour</label>
                        <input type="date" class="form-control" id="dateRetour" name="dateRetour" required>
                    </div>
                    <div class="mb-3">
                        <label for="status" class="form-label">Status</label>
                        <select class="form-control" id="status" name="status" required>
                            <option value="Pending">Pending</option>
                            <option value="Approved">Approved</option>
                            <option value="Returned">Returned</option>
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

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

<script>
    // Open Emprunt Form with pre-filled book data
    function openEmpruntForm(bookId, bookTitle, bookAuthor) {
        document.getElementById('bookId').value = bookId;
        document.getElementById('bookTitle').value = bookTitle;
        document.getElementById('bookAuthor').value = bookAuthor;
        let modal = new bootstrap.Modal(document.getElementById('empruntFormModal'));
        modal.show();
    }
</script>
<script src="${pageContext.request.contextPath}/static/assets/js/cart.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/jquery-1.11.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/script.js"></script>
</body>
</html>
