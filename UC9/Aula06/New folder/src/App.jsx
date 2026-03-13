import { useState } from 'react';
import Header from './components/Header';
import EventCard from './components/EventCard';
import EventModal from './components/EventModal';
import EventForm from './components/EventForm';
import FilterBar from './components/FilterBar';
import Footer from './components/Footer';
import initialEvents from './data/events';
import './App.css';

function App() {
  // === ESTADOS (useState) ===
  const [events, setEvents] = useState(initialEvents);
  const [selectedEvent, setSelectedEvent] = useState(null);
  const [activeFilter, setActiveFilter] = useState('Todos');
  const [showForm, setShowForm] = useState(false);

  // === EVENTOS / HANDLERS ===

  // Abrir modal com detalhes do evento
  const handleViewDetails = (event) => {
    setSelectedEvent(event);
  };

  // Fechar modal
  const handleCloseModal = () => {
    setSelectedEvent(null);
  };

  // Mudar filtro de categoria
  const handleFilterChange = (category) => {
    setActiveFilter(category);
  };

  // Toggle formulário de criação
  const handleToggleForm = () => {
    setShowForm(!showForm);
  };

  // Adicionar novo evento (callback do formulário)
  const handleAddEvent = (newEvent) => {
    setEvents([newEvent, ...events]);
  };

  // === DADOS DERIVADOS ===

  // Filtrar eventos por categoria
  const filteredEvents = activeFilter === 'Todos'
    ? events
    : events.filter(event => event.category === activeFilter);

  // Contar favoritos (simplificado para o header)
  const favoriteCount = 0; // Gerenciado localmente em cada card

  return (
    <div className="app">
      {/* Header com contadores */}
      <Header eventCount={events.length} favoriteCount={favoriteCount} />

      {/* Hero Section */}
      <section className="hero">
        <h1 className="hero-title">
          Descubra eventos <span className="gradient-text">incríveis</span> perto de você
        </h1>
        <p className="hero-subtitle">
          Explore, favorite e crie eventos de música, tecnologia, gastronomia,
          esporte e arte. Sua próxima experiência começa aqui.
        </p>
        <div className="hero-actions">
          <button className="btn-primary" onClick={() => document.getElementById('events')?.scrollIntoView({ behavior: 'smooth' })}>
            🔍 Explorar Eventos
          </button>
          <button className="btn-secondary" onClick={handleToggleForm}>
            {showForm ? '✕ Fechar Formulário' : '✨ Criar Evento'}
          </button>
        </div>
      </section>

      {/* Formulário de criação (renderização condicional) */}
      {showForm && (
        <div className="form-section-wrapper">
          <EventForm
            onAddEvent={handleAddEvent}
            onClose={() => setShowForm(false)}
          />
        </div>
      )}

      {/* Conteúdo principal */}
      <main className="main-content" id="events">
        <div className="section-header">
          <h2 className="section-title">
            📅 Eventos Disponíveis
            <span className="event-count">{filteredEvents.length} encontrados</span>
          </h2>
          <FilterBar activeFilter={activeFilter} onFilterChange={handleFilterChange} />
        </div>

        {/* Grid de eventos */}
        <div className="events-grid">
          {filteredEvents.length > 0 ? (
            filteredEvents.map((event, index) => (
              <div key={event.id} style={{ animationDelay: `${index * 0.08}s` }}>
                <EventCard
                  event={event}
                  onViewDetails={handleViewDetails}
                />
              </div>
            ))
          ) : (
            <div className="empty-state">
              <div className="empty-icon">🔍</div>
              <h3>Nenhum evento encontrado</h3>
              <p>Tente selecionar outra categoria ou crie um novo evento!</p>
            </div>
          )}
        </div>
      </main>

      {/* Modal de detalhes (renderização condicional) */}
      {selectedEvent && (
        <EventModal event={selectedEvent} onClose={handleCloseModal} />
      )}

      {/* Footer */}
      <Footer />
    </div>
  );
}

export default App;
