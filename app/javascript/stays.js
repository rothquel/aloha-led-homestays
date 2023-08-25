document.addEventListener('DOMContentLoaded', function () {
  const hostSelect = document.getElementById('host-select');
  const roomSelect = document.getElementById('room-select');

  hostSelect.addEventListener('change', function () {
    const hostId = this.value;

    // Send an AJAX request to fetch rooms for the selected host
    fetch(`/rooms_for_host/${hostId}`, { method: 'GET' })
      .then((response) => response.json())
      .then((data) => {
        // Clear existing room options
        roomSelect.innerHTML = '';

        // Add the new room options
        data.rooms.forEach((room) => {
          const option = document.createElement('option');
          option.value = room.id;
          option.textContent = room.name; // Adjust this to match your room attributes
          roomSelect.appendChild(option);
        });
      })
      .catch((error) => console.error('Error fetching rooms:', error));
  });
});
