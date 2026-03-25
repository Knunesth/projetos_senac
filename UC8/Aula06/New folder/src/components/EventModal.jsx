import './EventModal.css';

function EventModal({ event, onClose }) {
  if (!event) return null;

  const handleOverlayClick = (e) => {
    if (e.target === e.currentTarget) {
      onClose();
    }
  };

  const formatDate = (dateStr) => {
    const date = new Date(dateStr + 'T00:00:00');
    return date.toLocaleDateString('pt-BR', {
      weekday: 'long',
      day: '2-digit',
      month: 'long',
      year: 'numeric'
    });
  };

  return (
    <div className="modal-overlay" onClick={handleOverlayClick}>
      <div className="modal-content">
        <div className="modal-image">
          <img src={event.image} alt={event.title} />
          <div className="modal-image-overlay"></div>
          <button className="modal-close-btn" onClick={onClose} aria-label="Fechar">
            ✕
          </button>
        </div>

        <div className="modal-body">
          <span className={`modal-category category-${event.category}`}>
            {event.category}
          </span>

          <h2 className="modal-title">{event.title}</h2>

          <p className="modal-description">{event.description}</p>

          <div className="modal-details">
            <div className="modal-detail-item">
              <span className="modal-detail-icon">📅</span>
              <div className="modal-detail-info">
                <span className="modal-detail-label">Data</span>
                <span className="modal-detail-value">{formatDate(event.date)}</span>
              </div>
            </div>

            <div className="modal-detail-item">
              <span className="modal-detail-icon">🕐</span>
              <div className="modal-detail-info">
                <span className="modal-detail-label">Horário</span>
                <span className="modal-detail-value">{event.time}h</span>
              </div>
            </div>

            <div className="modal-detail-item">
              <span className="modal-detail-icon">📍</span>
              <div className="modal-detail-info">
                <span className="modal-detail-label">Local</span>
                <span className="modal-detail-value">{event.location}</span>
              </div>
            </div>

            <div className="modal-detail-item">
              <span className="modal-detail-icon">🎫</span>
              <div className="modal-detail-info">
                <span className="modal-detail-label">Ingresso</span>
                <span className="modal-detail-value">{event.price}</span>
              </div>
            </div>

            <div className="modal-detail-item">
              <span className="modal-detail-icon">👥</span>
              <div className="modal-detail-info">
                <span className="modal-detail-label">Capacidade</span>
                <span className="modal-detail-value">{event.capacity} pessoas</span>
              </div>
            </div>
          </div>

          <div className="modal-organizer">
            <div className="organizer-avatar">
              {event.organizer.charAt(0)}
            </div>
            <div className="organizer-info">
              <span className="organizer-label">Organizador</span>
              <span className="organizer-name">{event.organizer}</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default EventModal;
