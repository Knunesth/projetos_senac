import Navbar from "../components/organisms/Navbar";
import HeroSection from "../components/organisms/HeroSection";
import HowItWorks from "../components/organisms/HowItWorks";
import BooksSection from "../components/organisms/BooksSection";
import Testimonials from "../components/organisms/Testimonials";
import Pricing from "../components/organisms/Pricing";
import Footer from "../components/organisms/Footer";

function Home() {
  return (
    <>
      <Navbar />
      <HeroSection />
      <HowItWorks />
      <BooksSection />
      <Testimonials />
      <Pricing />
      <Footer />
    </>
  );
}

export default Home;