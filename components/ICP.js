import Link from 'next/link';


const ExternalLink = ({ href, children }) => (
  <a
    className="text-gray-500 hover:text-gray-600 transition"
    target="_blank"
    rel="noopener noreferrer"
    href={href}
  >
    {children}
  </a>
);

export default function ICP() {
  return (
    <div className="flex justify-center">
      <ExternalLink href="http://www.beian.miit.gov.cn/">
        粤ICP备15081728号
      </ExternalLink>
    </div>
  );
}
