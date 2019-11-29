const typedStringsExport = () => {
  if (document.querySelector('#typed-strings')) {
    new Typed('#typed', {
      stringsElement: '#typed-strings', typeSpeed: 100
    });
  }
}

export { typedStringsExport };
