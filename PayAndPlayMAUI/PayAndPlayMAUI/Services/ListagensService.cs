using Newtonsoft.Json;

namespace PayAndPlayMAUI.Services
{
    public class ListagensService
    {
        private string baseUrl { get; set; }
        private HttpClient client { get; set; }
        private HttpResponseMessage response { get; set; }
        public ListagensService()
        {
            // IEFP
            this.baseUrl = DeviceInfo.Platform ==
                DevicePlatform.Android ? "http://10.30.16.17:8000/api/" : "http://localhost:8000/api/";

            //// Home
            //this.baseUrl = DeviceInfo.Platform ==
            //    DevicePlatform.Android ? "http://192.168.1.76:8000/api/" : "http://localhost:8000/api/";

            this.client = new HttpClient { BaseAddress = new Uri(this.baseUrl) };
            this.client.Timeout = TimeSpan.FromSeconds(60);
            this.response = new HttpResponseMessage();

        }

        // LISTAGENS DJ
        public async Task<decimal> CalculoSaldoDJ(int DjId)
        {
            try
            {
                decimal saldo = -1;
                string endpoint = $"Listagens/CalculoSaldoDJ/{DjId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    saldo = JsonConvert.DeserializeObject<decimal>(content);
                }

                return await Task.FromResult(saldo);
            }
            catch (Exception)
            {
                return -1;
            }
        }
        public async Task<decimal> ListarGanhosMes(int data, int DjId)
        {
            try
            {
                decimal ganhos = -1;
                string endpoint = $"Listagens/ListarGanhosMes/{data}/{DjId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    ganhos = JsonConvert.DeserializeObject<decimal>(content);
                }

                return await Task.FromResult(ganhos);
            }
            catch (Exception)
            {
                return -1;
            }
        }
        public async Task<Dictionary<string, decimal>> ListarGanhosPeriodo(int dataInicio, int dataFinal, int DjId)
        {
            try
            {
                Dictionary<string, decimal> ganhos = null;
                string endpoint = $"Listagens/ListarGanhosPeriodo/{dataInicio}/{dataFinal}/{DjId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    ganhos = JsonConvert.DeserializeObject<Dictionary<string, decimal>>(content);
                }

                return await Task.FromResult(ganhos);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<string> ListarMusicasMenosPedidas(int DjId)
        {
            try
            {
                string musicaMenosPedida = null;
                string endpoint = $"Listagens/ListarMusicasMenosPedidas/{DjId}";

                this.response = await client.GetAsync(endpoint);

                if (response.IsSuccessStatusCode)
                {
                    musicaMenosPedida = await response.Content.ReadAsStringAsync();
                }

                return await Task.FromResult(musicaMenosPedida);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<string> ListarMusicasMaisPedidas(int DjId)
        {
            try
            {
                string musicaMaisPedida = null;
                string endpoint = $"Listagens/ListarMusicasMaisPedidas/{DjId}";

                this.response = await client.GetAsync(endpoint);

                if (response.IsSuccessStatusCode)
                {
                    musicaMaisPedida = await response.Content.ReadAsStringAsync();
                }

                return await Task.FromResult(musicaMaisPedida);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<string> ListarUtilizadorMenosPedidos(int DjId)
        {
            try
            {
                string utilizadorMenosPedidos = null;
                string endpoint = $"Listagens/ListarUtilizadorMenosPedidos/{DjId}";

                this.response = await client.GetAsync(endpoint);

                if (response.IsSuccessStatusCode)
                {
                    utilizadorMenosPedidos = await response.Content.ReadAsStringAsync();
                }

                return await Task.FromResult(utilizadorMenosPedidos);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<string> ListarUtilizadorMaisPedidos(int DjId)
        {
            try
            {
                string utilizadorMaisPedidos = null;
                string endpoint = $"Listagens/ListarUtilizadorMaisPedidos/{DjId}";

                this.response = await client.GetAsync(endpoint);

                if (response.IsSuccessStatusCode)
                {
                    utilizadorMaisPedidos = await response.Content.ReadAsStringAsync();
                }

                return await Task.FromResult(utilizadorMaisPedidos);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<string> ListarUtilizadorMenosGastos(int DjId)
        {
            try
            {
                string utilizadorMenosGastos = null;
                string endpoint = $"Listagens/ListarUtilizadorMenosGastos/{DjId}";

                this.response = await client.GetAsync(endpoint);

                if (response.IsSuccessStatusCode)
                {
                    utilizadorMenosGastos = await response.Content.ReadAsStringAsync();
                }

                return await Task.FromResult(utilizadorMenosGastos);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<string> ListarUtilizadorMaisGastos(int DjId)
        {
            try
            {
                string utilizadorMaisGastos = null;
                string endpoint = $"Listagens/ListarUtilizadorMaisGastos/{DjId}";

                this.response = await client.GetAsync(endpoint);

                if (response.IsSuccessStatusCode)
                {
                    utilizadorMaisGastos = await response.Content.ReadAsStringAsync();
                }

                return await Task.FromResult(utilizadorMaisGastos);
            }
            catch (Exception)
            {
                return null;
            }
        }
        
        // LISTAGENS UTILIZADOR
        public async Task<Dictionary<string, decimal>> ListarGastosMesPorDj(int data, int UtilizadorId)
        {
            try
            {
                Dictionary<string, decimal> gastos = null;
                string endpoint = $"Listagens/ListarGastosMesPorDj/{data}/{UtilizadorId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    gastos = JsonConvert.DeserializeObject<Dictionary<string, decimal>>(content);
                }

                return await Task.FromResult(gastos);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<Dictionary<string, decimal>> ListarGastosPeriodo(int dataInicio, int dataFinal, int UtilizadorId)
        {
            try
            {
                Dictionary<string, decimal> gastos = null;
                string endpoint = $"Listagens/ListarGastosPeriodo/{dataInicio}/{dataFinal}/{UtilizadorId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    gastos = JsonConvert.DeserializeObject<Dictionary<string, decimal>>(content);
                }

                return await Task.FromResult(gastos);
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}