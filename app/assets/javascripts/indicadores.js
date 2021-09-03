fetch('https://mindicador.cl/api').then(function(response) {
   return response.json();
}).then(function(dailyIndicators) {
  document.getElementById("UF").innerHTML = 'El valor actual de la UF es $' + dailyIndicators.uf.valor;
  document.getElementById("DolarO").innerHTML = 'El valor actual del Dólar observado es $' + dailyIndicators.dolar.valor;
  document.getElementById("Euro").innerHTML = 'El valor actual del Euro es $' + dailyIndicators.euro.valor;
  document.getElementById("IPC").innerHTML = 'El valor actual del IPC es ' + dailyIndicators.ipc.valor;
}).catch(function(error) {
  console.log('Requestfailed', error);
});

//La API Fetch proporciona una interfaz para recuperar recursos Resultará familiar a cualquiera que haya usado XMLHttpRequest, pero la nueva API ofrece un conjunto de características más potente y flexible.
//Fetch ofrece una definición genérica de los objetos Request y Response (y otras cosas relacionadas con las solicitudes de red).
//https://developer.mozilla.org/es/docs/Web/API/Fetch_API#compatibilidad_de_navegadores