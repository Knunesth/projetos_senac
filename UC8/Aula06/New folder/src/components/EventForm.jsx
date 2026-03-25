import { useState } from 'react';
import './EventForm.css';

const INITIAL_FORM = {
  title: '',
  date: '',
  time: '',
  location: '',
  category: '',
  description: '',
  price: '',
  capacity: '',
  organizer: ''
};

function EventForm({ onAddEvent, onClose }) {
  const [formData, setFormData] = useState(INITIAL_FORM);
  const [errors, setErrors] = useState({});
  const [showSuccess, setShowSuccess] = useState(false);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });

    // Limpa o erro do campo ao digitar
    if (errors[name]) {
      setErrors({ ...errors, [name]: '' });
    }
  };

  const validate = () => {
    const newErrors = {};

    if (!formData.title.trim()) newErrors.title = 'Nome do evento é obrigatório';
    if (!formData.date) newErrors.date = 'Data é obrigatória';
    if (!formData.time) newErrors.time = 'Horário é obrigatório';
    if (!formData.location.trim()) newErrors.location = 'Local é obrigatório';
    if (!formData.category) newErrors.category = 'Categoria é obrigatória';
    if (!formData.description.trim()) newErrors.description = 'Descrição é obrigatória';

    setErrors(newErrors);
    return Object.keys(newErrors).length === 0;
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    if (!validate()) return;

    const newEvent = {
      ...formData,
      id: Date.now(),
      price: formData.price || 'Gratuito',
      capacity: parseInt(formData.capacity) || 100,
      image: `https://images.unsplash.com/photo-1492684223066-81342ee5ff30?w=600&h=400&fit=crop`
    };

    onAddEvent(newEvent);
    setFormData(INITIAL_FORM);
    setShowSuccess(true);

    setTimeout(() => {
      setShowSuccess(false);
    }, 3000);
  };

  const handleReset = () => {
    setFormData(INITIAL_FORM);
    setErrors({});
    setShowSuccess(false);
  };

  return (
    <section className="event-form-section" id="create">
      <div className="form-container">
        <div className="form-header">
          <h2>✨ Criar Novo Evento</h2>
          <button className="form-close-btn" onClick={onClose} aria-label="Fechar formulário">
            ✕
          </button>
        </div>

        {showSuccess && (
          <div className="form-success">
            ✅ Evento criado com sucesso!
          </div>
        )}

        <form onSubmit={handleSubmit}>
          <div className="form-grid">
            {/* Nome do evento */}
            <div className="form-group full-width">
              <label htmlFor="title">
                Nome do Evento <span className="required">*</span>
              </label>
              <input
                type="text"
                id="title"
                name="title"
                value={formData.title}
                onChange={handleChange}
                placeholder="Ex: Festival de Música ao Vivo"
                className={errors.title ? 'error' : ''}
              />
              {errors.title && <span className="error-message">⚠ {errors.title}</span>}
            </div>

            {/* Data */}
            <div className="form-group">
              <label htmlFor="date">
                Data <span className="required">*</span>
              </label>
              <input
                type="date"
                id="date"
                name="date"
                value={formData.date}
                onChange={handleChange}
                className={errors.date ? 'error' : ''}
              />
              {errors.date && <span className="error-message">⚠ {errors.date}</span>}
            </div>

            {/* Horário */}
            <div className="form-group">
              <label htmlFor="time">
                Horário <span className="required">*</span>
              </label>
              <input
                type="time"
                id="time"
                name="time"
                value={formData.time}
                onChange={handleChange}
                className={errors.time ? 'error' : ''}
              />
              {errors.time && <span className="error-message">⚠ {errors.time}</span>}
            </div>

            {/* Local */}
            <div className="form-group">
              <label htmlFor="location">
                Local <span className="required">*</span>
              </label>
              <input
                type="text"
                id="location"
                name="location"
                value={formData.location}
                onChange={handleChange}
                placeholder="Ex: Arena Park - São Paulo"
                className={errors.location ? 'error' : ''}
              />
              {errors.location && <span className="error-message">⚠ {errors.location}</span>}
            </div>

            {/* Categoria */}
            <div className="form-group">
              <label htmlFor="category">
                Categoria <span className="required">*</span>
              </label>
              <select
                id="category"
                name="category"
                value={formData.category}
                onChange={handleChange}
                className={errors.category ? 'error' : ''}
              >
                <option value="">Selecione...</option>
                <option value="Música">🎵 Música</option>
                <option value="Tecnologia">💻 Tecnologia</option>
                <option value="Gastronomia">🍽️ Gastronomia</option>
                <option value="Esporte">⚽ Esporte</option>
                <option value="Arte">🎨 Arte</option>
              </select>
              {errors.category && <span className="error-message">⚠ {errors.category}</span>}
            </div>

            {/* Preço */}
            <div className="form-group">
              <label htmlFor="price">Preço</label>
              <input
                type="text"
                id="price"
                name="price"
                value={formData.price}
                onChange={handleChange}
                placeholder="Ex: R$ 50,00 ou Gratuito"
              />
            </div>

            {/* Capacidade */}
            <div className="form-group">
              <label htmlFor="capacity">Capacidade</label>
              <input
                type="number"
                id="capacity"
                name="capacity"
                value={formData.capacity}
                onChange={handleChange}
                placeholder="Ex: 500"
                min="1"
              />
            </div>

            {/* Organizador */}
            <div className="form-group full-width">
              <label htmlFor="organizer">Organizador</label>
              <input
                type="text"
                id="organizer"
                name="organizer"
                value={formData.organizer}
                onChange={handleChange}
                placeholder="Ex: Beats Produções"
              />
            </div>

            {/* Descrição */}
            <div className="form-group full-width">
              <label htmlFor="description">
                Descrição <span className="required">*</span>
              </label>
              <textarea
                id="description"
                name="description"
                value={formData.description}
                onChange={handleChange}
                placeholder="Descreva seu evento em detalhes..."
                className={errors.description ? 'error' : ''}
              />
              {errors.description && <span className="error-message">⚠ {errors.description}</span>}
            </div>

            {/* Botões */}
            <div className="form-actions">
              <button type="submit" className="btn-submit">
                🚀 Criar Evento
              </button>
              <button type="button" className="btn-reset" onClick={handleReset}>
                Limpar
              </button>
            </div>
          </div>
        </form>
      </div>
    </section>
  );
}

export default EventForm;
