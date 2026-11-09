/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx}"],
  theme: {
    extend: {
      colors: {
        primary: "#0f172a",   // dark navy
        accent: "#06b6d4",    // cyan
        soft: "#f1f5f9"       // light background
      }
    },
  },
  plugins: [],
}