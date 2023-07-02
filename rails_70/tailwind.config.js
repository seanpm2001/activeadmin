const execSync = require('child_process').execSync;
const output = execSync('bundle show activeadmin', { encoding: 'utf-8' });
const colors = require('tailwindcss/colors');
const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  content: [
    './node_modules/flowbite/**/*.js',
    output.trim() + '/app/assets/stylesheets/**/*.css',
    output.trim() + '/app/views/**/*.{erb,haml,html,rb}',
    // output.trim() + '/app/**/*.{erb,haml,html,rb}',
    output.trim() + '/lib/**/*.{erb,haml,html,rb}',
    './app/admin/**/*.{erb,haml,html,rb}',
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  // safelist: [
  //   'text-white',
  //   'bg-blue-700'
  // ]
  // darkMode: "media", // Flowbite uses class ?? https://github.com/themesberg/flowbite/blob/main/plugin.js
  theme: {
    extend: {
      ...defaultTheme,
      // colors: {
      //   gray: colors.indigo,
      // },
      // fontFamily: {
      //  Inter: ["Inter"],
      // },
    },
  },
  plugins: [
    require('flowbite/plugin')
  ]
}
