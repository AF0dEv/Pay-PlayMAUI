using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static CoreFoundation.DispatchSource;

namespace PayAndPlayMAUI.Services
{
    public class ListagensService
    {
        private string baseUrl { get; set; }
        public ListagensService()
        {
            this.baseUrl = DeviceInfo.Platform ==
                 DevicePlatform.Android ? "http://10.30.16.17:8000/api/" : "http://localhost:8000/api/";
        }
        // Lisagens DJ
        public async Task<decimal> CalculoSadoDJ(int DjId)
        {
            try
            {
                decimal saldo = -1;
                string fullURL = this.baseUrl + $"Listagens/CalculoSaldoDJ/{DjId}";

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.GetAsync("");


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
                string fullURL = this.baseUrl + $"Listagens/ListarGanhosMes/{data}/{DjId}";

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.GetAsync("");


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
                string fullURL = this.baseUrl + $"Listagens/ListarGanhosPeriodo/{dataInicio}/{dataFinal}/{DjId}";

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.GetAsync("");


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
            // fiquei aqui, continuar a configurar a API
        }
    }
}
