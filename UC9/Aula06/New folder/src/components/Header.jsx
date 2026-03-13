import { useState } from 'react';
import './Header.css';

function Header({ eventCount, favoriteCount }) {
  const [menuOpen, setMenuOpen] = useState(false);

  const toggleMenu = () => {
    setMenuOpen(!menuOpen);
  };

  return (
    <header className="header">
      <div className="header-content">
        <div className="header-logo">
          <span className="logo-icon">🎯</span>
          <span>Event<span className="logo-highlight">Hub</span></span>
        </div>

        <nav className={`header-nav ${menuOpen ? 'open' : ''}`}>
          <a href="#events" onClick={() => setMenuOpen(false)}>Eventos</a>
          <a href="#create" onClick={() => setMenuOpen(false)}>Criar Evento</a>
          <a href="#about" onClick={() => setMenuOpen(false)}>Sobre</a>
        </nav>

        <div className="header-stats">
          <div className="stat-badge">
            📅 <span className="stat-count">{eventCount}</span> eventos
          </div>
          <div className="stat-badge">
            ❤️ <span className="stat-count">{favoriteCount}</span> favoritos
          </div>
        </div>

        <button
          className={`hamburger ${menuOpen ? 'active' : ''}`}
          onClick={toggleMenu}
          aria-label="Menu"
        >
          <span></span>
          <span></span>
          <span></span>
        </button>
      </div>
    </header>
  );
}

export default Header;
