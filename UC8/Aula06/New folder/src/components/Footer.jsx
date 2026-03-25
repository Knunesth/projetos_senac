import './Footer.css';

function Footer() {
  return (
    <footer className="footer">
      <div className="footer-content">
        <div className="footer-brand">
          🎯 Event<span className="brand-highlight">Hub</span>
        </div>

        <div className="footer-info">
          Atividade 06 — React: Estados, Eventos e Formulários &copy; 2026
        </div>

        <div className="footer-tech">
          Feito com
          <span>⚛️ React</span>
          <span>⚡ Vite</span>
        </div>
      </div>
    </footer>
  );
}

export default Footer;
