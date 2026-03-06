import Card from "../atoms/Card";

function TestimonialCard({ name, comment }) {
  return (
    <Card>
      <p>"{comment}"</p>
      <strong>{name}</strong>
    </Card>
  );
}

export default TestimonialCard;