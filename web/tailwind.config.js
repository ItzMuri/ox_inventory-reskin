/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'dark': '#121212',
        'light': '#525252'
      },
      maxWidth: {
        '8xl': '88rem'
      },
      opacity: {
        '15': '.15'
      },
      screens: {
        'k': '1900px',
        '2k': '2500px',
        '4k': '3800px'
      },
    },
  },
  plugins: [],
}