import { useState } from "react";

function Navbar() {
  const [open, setOpen] = useState(false);

  return (
    <nav className="navbar">
      <h2>Clube do Livro</h2>

      <div className={`links ${open ? "show" : ""}`}>
        <a href="#como">Como funciona</a>
        <a href="#livros">Livros</a>
        <a href="#depoimentos">Depoimentos</a>
        <a href="#planos">Planos</a>
      </div>

      <div className="menu" onClick={() => setOpen(!open)}>
        ☰
      </div>
    </nav>
  );
}

export default Navbar;