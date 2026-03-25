import './FilterBar.css';

const CATEGORIES = [
  { key: 'Todos', label: 'Todos', icon: '🌟' },
  { key: 'Música', label: 'Música', icon: '🎵' },
  { key: 'Tecnologia', label: 'Tech', icon: '💻' },
  { key: 'Gastronomia', label: 'Gastro', icon: '🍽️' },
  { key: 'Esporte', label: 'Esporte', icon: '⚽' },
  { key: 'Arte', label: 'Arte', icon: '🎨' }
];

function FilterBar({ activeFilter, onFilterChange }) {
  return (
    <div className="filter-bar">
      <span className="filter-label">Filtrar:</span>
      {CATEGORIES.map((cat) => (
        <button
          key={cat.key}
          className={`filter-btn ${activeFilter === cat.key ? 'active' : ''}`}
          onClick={() => onFilterChange(cat.key)}
        >
          <span>{cat.icon}</span>
          {cat.label}
        </button>
      ))}
    </div>
  );
}

export default FilterBar;
