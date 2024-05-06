
namespace projeto_hospedagem.Models
{
    public class Reserva
    {
        public List<Pessoa> Hospedes { get; set; }
        public Suite Suite { get; set; }
        public int DiasReservados { get; set; }

        public Reserva() { }

        public Reserva(int diasReservados)
        {
            DiasReservados = diasReservados;
        }

        public void CadastrarHospedes(List<Pessoa> hospedes)
        {
            try
            {
                if (hospedes.Count <= this.Suite.Capacidade)
                    Hospedes = hospedes;
                else
                {
                    throw new Exception("Não foi possivel realizar a reserva");   
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
                // TODO: Retornar uma exception caso a capacidade seja menor que o número de hóspedes recebido
                // *IMPLEMENTE AQUI*
            }
        }

        public void CadastrarSuite(Suite suite)
        {
            Suite = suite;
        }

        public int ObterQuantidadeHospedes()
        {
            int quantidade = Hospedes.Count();
            return quantidade;
        }

        public decimal CalcularValorDiaria()
        {   
            decimal valor = DiasReservados * Suite.ValorDiaria;

            if (DiasReservados >= 10)
            {
                decimal desconto = valor/100 * 10;
                valor -= desconto;
            }

            return valor;
        }
    }
}