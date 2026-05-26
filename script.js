document.getElementById('loginForm').addEventListener('submit', function(event) {
    // Previne que a página recarregue ao enviar o formulário
    event.preventDefault();

    const user = document.getElementById('username').value.toLowerCase().trim();
    const pass = document.getElementById('password').value;
    const errorMsg = document.getElementById('error-msg');

    // Lógica de roteamento fictício
    if (user === 'cliente' && pass === '123') {
        window.location.href = 'visao_cliente.html';
    } else if (user === 'analista' && pass === '123') {
        window.location.href = 'visao_analista.html';
    } else {
        errorMsg.textContent = 'Usuário ou senha incorretos. Tente cliente/123 ou analista/123.';
    }
});