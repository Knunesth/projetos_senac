import FeatureItem from "../molecules/FeatureItem";

function HowItWorks() {
  return (
    <section id="como">

      <h2>Como Funciona</h2>

      <FeatureItem
        title="Escolha seu plano"
        description="Selecione o plano ideal para você."
      />

      <FeatureItem
        title="Receba um livro todo mês"
        description="Enviamos um livro surpresa selecionado por especialistas."
      />

      <FeatureItem
        title="Participe da comunidade"
        description="Discuta leituras com outros leitores."
      />

    </section>
  );
}

export default HowItWorks;