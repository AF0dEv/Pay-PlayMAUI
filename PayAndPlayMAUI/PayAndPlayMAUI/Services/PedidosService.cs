using Microsoft.Maui.ApplicationModel;
using Newtonsoft.Json;
using PayAndPlayMAUI.Models;
using System.Text;

namespace PayAndPlayMAUI.Services
{
    public class PedidosService
    {
        private HttpClient client { get; set; }
        private HttpResponseMessage response { get; set; }
        private string baseUrl { get; set; }
        public PedidosService()
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
        public async Task<List<PedidoModel>> GetPedidos()
        {
            try
            {

                List<PedidoModel> pedidos = new List<PedidoModel>();

                string endpoint = "Pedidos/getPedidos";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    pedidos = JsonConvert.DeserializeObject<List<PedidoModel>>(content);
                }

                return await Task.FromResult(pedidos.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<PedidoModel> GetPedido(int PedidoId)
        {
            try
            {
                PedidoModel pedido = new PedidoModel();

                string endpoint = $"Pedidos/getPedido/{PedidoId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    pedido = JsonConvert.DeserializeObject<PedidoModel>(content);
                }

                return await Task.FromResult(pedido);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<List<PedidoModel>> GetPedidoForDJ(int DjId)
        {
            try
            {
                List<PedidoModel> pedidos = new List<PedidoModel>();

                string endpoint = $"Pedidos/getPedidosForDJ/{DjId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    pedidos = JsonConvert.DeserializeObject<List<PedidoModel>>(content);
                }

                return await Task.FromResult(pedidos.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<List<PedidoModel>> GetPedidosPendentesByUtilizador(int UtilizadorId)
        {
            try
            {
                List<PedidoModel> pedidos = new List<PedidoModel>();

                string endpoint = $"Pedidos/getPedidosPendentesByUtilizador/{UtilizadorId}";

                this.response = await client.GetAsync(endpoint);

                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    pedidos = JsonConvert.DeserializeObject<List<PedidoModel>>(content);
                }

                return await Task.FromResult(pedidos.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<List<PedidoModel>> GetPedidosPagosForDJ(int DjId)
        {
            try
            {
                List<PedidoModel> pedidos = new List<PedidoModel>();

                string endpoint = $"Pedidos/getPedidosPagosForDJ/{DjId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    pedidos = JsonConvert.DeserializeObject<List<PedidoModel>>(content);
                }

                return await Task.FromResult(pedidos.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<List<PedidoModel>> GetPedidosPendentesForDJ(int DjId)
        {
            try
            {
                List<PedidoModel> pedidos = new List<PedidoModel>();

                string endpoint = $"Pedidos/getPedidosPendentesForDJ/{DjId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    pedidos = JsonConvert.DeserializeObject<List<PedidoModel>>(content);
                }

                return await Task.FromResult(pedidos.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<List<PedidoModel>> GetPedidosConcluidosForDJ(int DjId)
        {
            try
            {
                List<PedidoModel> pedidos = new List<PedidoModel>();

                string endpoint = $"Pedidos/getPedidosConcluidosForDJ/{DjId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    pedidos = JsonConvert.DeserializeObject<List<PedidoModel>>(content);
                }

                return await Task.FromResult(pedidos.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<List<PedidoModel>> GetPedidosRecusadosForDJ(int DjId)
        {
            try
            {
                List<PedidoModel> pedidos = new List<PedidoModel>();

                string endpoint = $"Pedidos/getPedidosRecusadosForDJ/{DjId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    pedidos = JsonConvert.DeserializeObject<List<PedidoModel>>(content);
                }

                return await Task.FromResult(pedidos.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<List<PedidoModel>> GetPedidosByUtilizador(int UtilizadorId)
        {
            try
            {
                List<PedidoModel> pedidos = new List<PedidoModel>();

                string endpoint = $"Pedidos/getPedidosByUtilizador/{UtilizadorId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    pedidos = JsonConvert.DeserializeObject<List<PedidoModel>>(content);
                }

                return await Task.FromResult(pedidos.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<PedidoModel> AddPedido(PedidoModel pedido)
        {
            try
            {
                string endpoint = $"Pedidos/addPedido";

                string pedidoInfoAsJson = JsonConvert.SerializeObject(pedido, new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                });

                StringContent pedidoStringContent = new StringContent(pedidoInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PostAsync(endpoint, pedidoStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(pedido);
                }

                return await Task.FromResult(new PedidoModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<PedidoModel> EditPedido(PedidoModel pedido)
        {
            try
            {
                string endpoint = $"Pedidos/editPedido/{pedido.ID}";
                string pedidoInfoAsJson = JsonConvert.SerializeObject(pedido, new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                });

                StringContent pedidoStringContent = new StringContent(pedidoInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PutAsync(endpoint, pedidoStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(pedido);
                }

                return await Task.FromResult(new PedidoModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<bool> DeletePedido(PedidoModel pedido)
        {
            try
            {
                string endpoint = $"Pedidos/deletePedido/{pedido.ID}";

                this.response = await client.DeleteAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(true);
                }

                return await Task.FromResult(false);
            }
            catch (Exception)
            {
                return false;
            }
        }

        public async Task<PedidoModel> LevantarSaldo(PedidoModel pedido)
        {
            try
            {
                string endpoint = $"Pedidos/LevantarSaldo";

                string pedidoInfoAsJson = JsonConvert.SerializeObject(pedido);

                StringContent pedidoStringContent = new StringContent(pedidoInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PostAsync(endpoint, pedidoStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(pedido);
                }

                return await Task.FromResult(new PedidoModel());
            }
            catch (Exception)
            {
                return null;
            }
        } 
    }
}
