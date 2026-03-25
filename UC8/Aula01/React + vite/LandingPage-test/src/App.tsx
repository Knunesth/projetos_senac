function App() {
  const nomeCurso = "Tecnico em Desenvolvimento de Sistemas - 2025.08.53";

  return (
    <main style={{ padding: "20px", fontFamily: "Arial, sans-serif" }}>
      <h1>Seja bem-vindos ao {nomeCurso}</h1>
      <p>Este é o curso para o semestre 1/2026 da turma 2028.06.53</p>
      <StatusCard mensagem="Ambiente Configurado" />
    </main>
  );
}

function StatusCard ({ mensagem }) {
  return (
    <div 
      style = {{
        border: '1px solid #0078d4',
        borderRadius: '8px',
        padding: '10px',
      }}
    >
      <strong>{mensagem}</strong>
    </div>
  );
}

export default App;
