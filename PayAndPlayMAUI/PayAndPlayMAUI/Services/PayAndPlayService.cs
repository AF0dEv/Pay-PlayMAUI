using Newtonsoft.Json;
using PayAndPlayMAUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PayAndPlayMAUI.Services
{
    public class PayAndPlayService
    {
        private string baseUrl { get; set; }
        public PayAndPlayService()
        {
            this.baseUrl = DeviceInfo.Platform ==
                DevicePlatform.Android ? "http://10.30.16.17:8000/api/PayAndPlay/" : "http://localhost:8000/api/PayAndPlay/";
        }

        public async Task<List<DjModel>> GetDJs()
        {
            try
            {
                List<DjModel> DJs = new List<DjModel>();

                string fullURL = this.baseUrl + "DJs";

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.GetAsync("");


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    DJs = JsonConvert.DeserializeObject<List<DjModel>>(content);
                }

                return await Task.FromResult(DJs.ToList());
            }
            catch (Exception)
            {
                throw;
            }
            // resolver parte android nao liga
        }
    }
}
