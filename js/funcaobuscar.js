// Javascript para buscar dados

$(document).ready(function(){
    $('#busca').on('keypress', function(event){
        if(event.which === 13) { // Código da tecla Enter é 13
            event.preventDefault(); // Evita que o formulário recarregue a página

            let termo = $(this).val().trim(); // Remove espaços extras

            console.log("Buscando por:", termo); // Log para depuração

            if (termo.length >= 1) {  
                $.get('buscar.php', { termo: termo }, function(data){
                    console.log("Resposta do servidor:", data); // Mostra o JSON recebido

                    let resultados;
                    try {
                        resultados = JSON.parse(data); // Tenta converter JSON
                    } catch (e) {
                        console.error("Erro ao converter JSON:", e, data);
                        return;
                    }

                    let html = '';
                    if (resultados.length > 0) {
                        resultados.forEach(ramal => {
                            html += `<tr>
                                <td>${ramal.colaborador}</td>
                                <td>${ramal.setor}</td>
                                <td>${ramal.ramal || 'N/A'}</td>
                            </tr>`;
                        });
                    } else {
                        html = `<tr><td colspan="3" class="text-center">Nenhum resultado encontrado.</td></tr>`;
                    }

                    $('#resultado').html(html);
                }).fail(function(jqXHR, textStatus, errorThrown) {
                    console.error("Erro na requisição:", textStatus, errorThrown);
                });
            }
        }
    });
});