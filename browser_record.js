//Records audio through web browser, and plays it back

<script>
// Edit your script here
  const player = document.getElementById('player');

  const handleSuccess = function(stream) {
    if (window.URL) {
      player.srcObject = stream;
    } else {
      player.src = stream;
    }
  };

  navigator.mediaDevices.getUserMedia({ audio: true, video: false })
      .then(handleSuccess);
</script>

<!-- edit your html here -->
<audio id="player" controls></audio>
