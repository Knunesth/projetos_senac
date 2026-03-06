import Button from "../atoms/Button";

function Pricing() {
  return (
    <section id="planos">

      <h2>Planos</h2>

      <div className="plans">

        <div className="plan">
          <h3>Mensal</h3>
          <p>R$39/mês</p>
          <Button text="Assinar" />
        </div>

        <div className="plan">
          <h3>Trimestral</h3>
          <p>R$99</p>
          <Button text="Assinar" />
        </div>

        <div className="plan">
          <h3>Anual</h3>
          <p>R$360</p>
          <Button text="Assinar" />
        </div>

      </div>

    </section>
  );
}

export default Pricing;