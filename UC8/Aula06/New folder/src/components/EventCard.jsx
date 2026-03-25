import { useState } from 'react';
import './EventCard.css';

function EventCard({ event, onViewDetails }) {
  const [isFavorite, setIsFavorite] = useState(false);

  const handleFavorite = (e) => {
    e.stopPropagation();
    setIsFavorite(!isFavorite);
  };

  const formatDate = (dateStr) => {
    const date = new Date(dateStr + 'T00:00:00');
    return date.toLocaleDateString('pt-BR', {
      day: '2-digit',
      month: 'short',
      year: 'numeric'
    });
  };

  return (
    <article className="event-card">
      <div className="card-image-wrapper">
        <img src={event.image} alt={event.title} loading="lazy" />
        <span className={`card-category category-${event.category}`}>
          {event.category}
        </span>
        <button
          className={`card-favorite-btn ${isFavorite ? 'favorited' : ''}`}
          onClick={handleFavorite}
          aria-label={isFavorite ? 'Remover dos favoritos' : 'Adicionar aos favoritos'}
        >
          {isFavorite ? '❤️' : '🤍'}
        </button>
        <span className="card-price">{event.price}</span>
      </div>

      <div className="card-body">
        <h3 className="card-title">{event.title}</h3>

        <div className="card-info">
          <div className="card-info-item">
            <span className="info-icon">📅</span>
            <span>{formatDate(event.date)} às {event.time}</span>
          </div>
          <div className="card-info-item">
            <span className="info-icon">📍</span>
            <span>{event.location}</span>
          </div>
          <div className="card-info-item">
            <span className="info-icon">👥</span>
            <span>{event.capacity} vagas</span>
          </div>
        </div>

        <div className="card-actions">
          <button className="btn-details" onClick={() => onViewDetails(event)}>
            Ver Detalhes
          </button>
        </div>
      </div>
    </article>
  );
}

export default EventCard;
