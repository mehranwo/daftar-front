import Link from "next/link";

export default function Logo() {
  return (
    <>
      <Link href="/">
        <a className="logo">
          <img src="/images/logo.svg" alt="Outline Logo" /> gaaaliver
        </a>
      </Link>
      <style jsx>{`
        .logo {
          display: flex;
          align-items: center;
          font-size: 24px;
          font-weight: 500;
          text-decoration: none;
          color: inherit;
        }
      `}</style>
    </>
  );
}
