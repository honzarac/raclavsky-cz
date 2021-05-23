module.exports = {
  purge: [
      './public/**/*.html',
      './src/**/*.vue',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    colors: {
      yellow: '#FBBF24',
      "yellow-bright": '#f8bd4f',
      white: '#FFFFFF'
    },
    fontFamily: {
      sans: ['Oswald'],
    },
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
