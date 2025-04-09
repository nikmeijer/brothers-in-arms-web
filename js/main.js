(() => {
    // VIDEO CONTROL LOGIC
    const player = document.querySelector('video');
    const videoControls = document.querySelector('#video-controls');
    const playButton = document.querySelector('#play-button');
    const pauseButton = document.querySelector('#pause-button');
    const stopButton = document.querySelector('#stop-button');

    if (player && videoControls) {
        console.log("JS is running");

        player.controls = false;
        videoControls.classList.remove('hidden');
        videoControls.style.display = 'flex';

        function playVideo() {
            player.play();
        }

        function pauseVideo() {
            player.pause();
        }

        function stopVideo() {
            player.pause();
            player.currentTime = 1;
        }

        playButton?.addEventListener("click", playVideo);
        pauseButton?.addEventListener("click", pauseVideo);
        stopButton?.addEventListener("click", stopVideo);
    }
})();

// VUE + Swiper LOGIC
document.addEventListener('DOMContentLoaded', () => {
    // EVENT PAGE VUE LOGIC
    const eventAppElement = document.querySelector("#eventApp");
    if (eventAppElement) {
        const app = Vue.createApp({
            data() {
                return {
                    event: {},
                    error: ""
                };
            },
            created() {
                fetch("http://localhost/brother_in_arms-api/public/events/1")
                    .then(response => {
                        if (!response.ok) throw new Error("Event not found");
                        return response.json();
                    })
                    .then(data => {
                        this.event = data;
                    })
                    .catch(error => {
                        this.error = "Failed to load event.";
                        console.error(error);
                    });
            }
        });

        app.mount("#eventApp");
    }

    // NEWS PAGE VUE LOGIC
    const newsAppElement = document.querySelector("#newsApp");
    if (newsAppElement) {
        const newsApp = Vue.createApp({
            data() {
                return {
                    news: [],
                    error: ""
                };
            },
            created() {
                fetch("http://localhost/brother_in_arms-api/public/news")
                    .then(res => res.json())
                    .then(data => {
                        this.news = data;
                    })
                    .catch(err => {
                        this.error = "Failed to load news.";
                        console.error(err);
                    });
            }
        });

        newsApp.mount("#newsApp");
    }

    // GALLERY PAGE VUE LOGIC
    const galleryAppElement = document.querySelector("#galleryApp");
    if (galleryAppElement) {
        const galleryApp = Vue.createApp({
            data() {
                return {
                    gallery: [],
                    error: ""
                };
            },
            created() {
                fetch("http://localhost/brother_in_arms-api/public/gallery")
                    .then(res => res.json())
                    .then(data => {
                        this.gallery = data;
                    })
                    .catch(err => {
                        this.error = "Failed to load gallery.";
                        console.error(err);
                    });
            }
        });

        galleryApp.mount("#galleryApp");
    }

    // LETTERS SWIPER INITIALIZATION
    const letterSwiperEl = document.querySelector('.letter-swiper');
    if (letterSwiperEl && typeof Swiper !== "undefined") {
        const slides = letterSwiperEl.querySelectorAll('.swiper-slide');
        if (slides.length > 1) {
            new Swiper('.letter-swiper', {
                loop: true,
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
            });
        }
    }
});
