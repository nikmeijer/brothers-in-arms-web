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

// VUE LOGIC FOR DISPLAYING ONE EVENT
document.addEventListener('DOMContentLoaded', () => {
    const eventAppElement = document.querySelector("#eventApp");
    if (eventAppElement) {
        const app = Vue.createApp({
            data() {
                return {
                    event: {},  // just one event
                    error: ""
                }
            },
            created() {
                fetch("http://localhost/brother_in_arms-api/public/events/1") // Make sure this is your correct API path
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
});
