<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Brothers in Arms</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Sedgwick+Ave&display=swap"
        rel="stylesheet">
    <link href="css/grid.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <script src="js/main.js"></script>
</head>

<body>
    <h1 class="hidden">Brothers in Arms</h1>

    <header class="full-width-grid-con real-header">
        <h2 class="hidden">Header</h2>
        <div id="logo" class="col-start-2 col-end-2">
            <a href="index.html">
                <img src="images/BIA_LOGO_COLOUR.png" alt="Logo">
            </a>
        </div>
        <nav class="m-col-start-10 m-col-end-13 l-col-start-10 l-col-end-13 xl-col-start-10 xl-col-end-13">
            <h2 class="hidden">Nav</h2>
            <li><a href="index.html">Home</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="history.html">History</a></li>
            <li><a href="news.html">News</a></li>
            <li><a href="event.html">Events</a></li>
            <li><a href="contact.php">Contact</a></li>
            <li><a href="contact.php" class="see-all-button m-col-start-6 m-col-end-8">Donate Now</a></li>
            <!--temporary placeholder link redirect to contact page, anyone with questions and some critical thinking skills who are really interested will reach out to find out until proper link is set up-->
        </nav>
        <!-- Mobile Menu -->
        <div id="mobile-nav" class="col-start-3 col-end-5 mobile">
            <input type="checkbox" id="overlay-input">
            <label for="overlay-input" id="overlay-button"><span></span></label>
            <div id="overlay">
                <ul>
                    <h2 class="hidden">Nav</h2>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="history.html">History</a></li>
                    <li><a href="news.html">News</a></li>
                    <li><a href="event.html">Events</a></li>
                    <li><a href="contact.php">Contact</a></li>
                    <li><a href="contact.php" class="see-all-button m-col-start-6 m-col-end-8">Donate Now</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <section class="grid-con">
            <div id="contact-hero" class="col-span-4 m-col-span-12 l-col-span-12 xl-col-span-12">
                <h2 class="col-span-4 m-col-span-12 l-col-span-12 xl-col-span-12">Contact Us</h2>
                <p class="col-span-4 m-col-span-12 l-col-span-12 xl-col-span-12">Get in touch with us! If you have any
                    questions, suggestions, or would like to learn more about the Brothers in Arms Memorial, feel free
                    to
                    reach out. You can contact us via email at<a
                        href="mailto:info@brothersinarmsmemorial.org">info@brothersinarmsmemorial.org</a>or call us at<a
                        href="tel:+15551234567">(555)
                        123-4567</a>.
                    We look forward to hearing from you!
                </p>
            </div>
        </section>

        <section class="grid-con" id="contact-con">
            <div class="col-span-4 m-col-span-6 l-col-span-6 xl-col-span-6" id="contact-text">
                <h2>Make a Donation</h2>
                <p>Help us achieve our goal of immortalizing those who fought and served in the Great War</p>
                <h3>$47,894 / $200,000</h3>
                <p>Raised so far</p>
                <button><a href="*">Donate Now</a></button>
                <h2>Give as you Live</h2>
                <p>We are registered with <a href="https://www.giveasyoulive.com/">Give as you Live.</a> This means we
                    will receive a small donation
                    if
                    you do your online shopping via Give as you Live. You can sign up to support us via <a
                        href="https://www.giveasyoulive.com/">this
                        link</a>.</p>
            </div>

            <div id="contact" class="col-span-4 m-col-span-6 l-col-span-6 xl-col-span-6">
                <form method="post" action="includes/sendmail.php">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>

                    <label for="email">Email Address:</label>
                    <input type="email" id="email" name="email" required>

                    <label for="mobile">Mobile Number:</label>
                    <input type="text" id="mobile" name="mobile" required>

                    <label for="message">Message:</label>
                    <textarea id="message" name="message" required placeholder="Type your message here:"></textarea>

                    <?php if (isset($_GET['success']) && $_GET['success'] == 1): ?>
                    <div class="success-message">Message sent successfully!</div>
                    <?php else: ?>
                    <button type="submit">Submit</button>
                    <?php endif; ?>
                </form>
            </div>
        </section>
    </main>

    <div id="site-footer">
        <footer class="grid-con">
            <div class="col-span-4 m-col-start-1 m-col-end-5 l-col-start-1 l-col-end-5" id="footer-logo">
                <a href="index.html">
                    <img src="images/BIA_LOGO_COLOUR.png" alt="Logo">
                </a>
            </div>


            <div class="col-span-2 m-col-start-1 m-col-end-5  footer-container" id="footer-nav-main-container">
                <ul id="footer-nav-main">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="history.html">History</a></li>
                    <li><a href="contact.php">Contact</a></li>
                </ul>
            </div>

            <div class="col-span-2 m-col-start-6 m-col-end-9 footer-container" id="footer-nav-secondary-container">
                <ul id="footer-nav-secondary">
                    <li><a href="*">Terms & Conditions</a></li>
                    <li><a href="*">Sitemap</a></li>
                    <li><a href="*">Donate</a></li>
                </ul>
            </div>

            <div class="col-span-4 m-col-span-4 l-col-span-4 xl-col-span-4 footer-container"
                id="footer-subscribe-container">
                <div id="footer-subscribe">
                    <form method="post" action="*">
                        <input type="email" id="newsletter" name="newsletter" placeholder="Subscribe to our newsletter!"
                            required>
                        <button type="submit">Subscribe</button>
                    </form>
                </div>
            </div>

        </footer>
    </div>
</body>

</html>