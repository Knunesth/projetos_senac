import Card from "../atoms/Card";

function BookCard({ title, author, description }) {
  return (
    <Card>
      <h3>{title}</h3>
      <h4>{author}</h4>
      <p>{description}</p>
    </Card>
  );
}

export default BookCard;