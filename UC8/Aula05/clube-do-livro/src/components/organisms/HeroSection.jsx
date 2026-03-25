import Button from "../atoms/Button";

function HeroSection() {
  return (
    <section className="hero">

      <h1>
        Descubra novos livros todos os meses
      </h1>

      <p>
        Receba em casa uma seleção especial feita por curadores
        apaixonados por literatura.
      </p>

      <Button text="Assinar agora"/>

    </section>
  );
}

export default HeroSection;