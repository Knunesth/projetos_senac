import BookCard from "../molecules/BookCard";

function BooksSection() {

  const books = [
    {
      title: "Noites de Biblioteca",
      author: "Ana Souza",
      description: "Uma jornada mágica entre livros antigos."
    },
    {
      title: "Café e Literatura",
      author: "Lucas Mendes",
      description: "Histórias aconchegantes sobre leitura."
    }
  ];

  return (
    <section id="livros">

      <h2>Livros do mês</h2>

      <div className="books">

        {books.map((book, index) => (
          <BookCard key={index} {...book} />
        ))}

      </div>

    </section>
  );
}

export default BooksSection;