import TestimonialCard from "../molecules/TestimonialCard";

function Testimonials() {
  return (
    <section id="depoimentos">

      <h2>Depoimentos</h2>

      <TestimonialCard
        name="Mariana Silva"
        comment="Adoro receber um livro surpresa todo mês!"
      />

      <TestimonialCard
        name="Carlos Pereira"
        comment="Descobri autores incríveis graças ao clube."
      />

    </section>
  );
}

export default Testimonials;