import type { Metadata } from "next";
import { Poppins } from "next/font/google";
import "./globals.css";

const poppins = Poppins({
  weight: ["100", "200", "300", "400", "500", "600", "700", "800", "900"],
  subsets: ["latin"],
});  

export const metadata: Metadata = {
  title: "foodGO - Seu App de Comida",
  description: "Descubra o sabor com o foodGO! Um aplicativo que oferece a conveniência de pedir sua refeição favorita para entrega, consumir no local ou levar para viagem. Experimente a melhor experiência gastronômica, onde você quiser!",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body
        className={`${poppins.className} antialiased`}
      >
        {children}
      </body>
    </html>
  );
}
