module.exports = {
  purge: [],
  darkMode: false, // Opciones: 'media' (activado por el modo oscuro del sistema), 'class' (activado por clases), 'false' (deshabilitado)
  theme: {
    extend: {
      colors: {
        'custom-blue': '#3490dc',
      },
    },
  },

  module.exports = {
    purge: [],
    darkMode: false,
    theme: {
      extend: {
        colors: {
          'custom-blue': '#3490dc',
        },
      },
    },
    variants: {
      extend: {
        backgroundColor: ['hover', 'focus'],
      },
    },
    plugins: [
      shadowPlugin,
    ],
  }

}
