using Newtonsoft.Json;
using PayAndPlayMAUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PayAndPlayMAUI.Services
{
    public class PlayListsService
    {
        private HttpClient client { get; set; }
        private HttpResponseMessage response { get; set; }
        private string baseUrl { get; set; }
        public PlayListsService()
        {
            // ANTES
            //// IEFP
            //this.baseUrl = DeviceInfo.Platform ==
            //    DevicePlatform.Android ? "http://10.30.16.17:8000/api/" : "http://localhost:8000/api/";
            //// Home
            //this.baseUrl = DeviceInfo.Platform ==
            //    DevicePlatform.Android ? "http://192.168.1.76:8000/api/" : "http://localhost:8000/api/";

            //this.client = new HttpClient();
            //this.client.Timeout = TimeSpan.FromSeconds(60);

            //this.response = new HttpResponseMessage();


            // DEPOIS

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
        public async Task<List<PlayListModel>> GetPlayLists()
        {
            try
            {
                List<PlayListModel> playlists = new List<PlayListModel>();

                // ANTES

                //string fullURL = this.baseUrl + "PlayLists/getPlayLists";

                //client.BaseAddress = new Uri(fullURL);

                //this.response = await client.GetAsync("");

                // DEPOIS

                string endpoint = "PlayLists/getPlayLists";

                this.response = await client.GetAsync(endpoint);

                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    playlists = JsonConvert.DeserializeObject<List<PlayListModel>>(content);
                }

                return await Task.FromResult(playlists.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<PlayListModel> GetPlayList(int PlayListId)
        {
            try
            {
                PlayListModel playlist = new PlayListModel();

                string endpoint = $"PlayLists/getPlayList/{PlayListId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    playlist = JsonConvert.DeserializeObject<PlayListModel>(content);
                }

                return await Task.FromResult(playlist);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public async Task<List<PlayListModel>> GetDjPlayLists(int DjId)
        {
            try
            {
                List<PlayListModel> playlists = new List<PlayListModel>();

                string endpoint = $"PlayLists/getDjPlayLists/{DjId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    playlists = JsonConvert.DeserializeObject<List<PlayListModel>>(content);
                }

                return await Task.FromResult(playlists.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<PlayListModel> AddPlayList(PlayListModel playlist)
        {
            try
            {
                // ANTES

                //string fullURL = this.baseUrl + $"PlayLists/addPlayList";

                //string playlistInfoAsJson = JsonConvert.SerializeObject(playlist);

                //StringContent playlistStringContent = new StringContent(playlistInfoAsJson, Encoding.UTF8, "application/json");

                //client.BaseAddress = new Uri(fullURL);

                //this.response = await client.PostAsync("", playlistStringContent);

                // DEPOIS

                string endpoint = $"PlayLists/addPlayList";

                string playlistInfoAsJson = JsonConvert.SerializeObject(playlist);

                StringContent playlistStringContent = new StringContent(playlistInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PostAsync(endpoint, playlistStringContent);

                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(playlist);
                }

                return await Task.FromResult(new PlayListModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<PlayListModel> EditPlayList(PlayListModel playlist)
        {
            try
            {
                string endpoint = $"PlayLists/editPlayList/{playlist.ID}";

                string playlistInfoAsJson = JsonConvert.SerializeObject(playlist, new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                });


                StringContent playlistStringContent = new StringContent(playlistInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PutAsync(endpoint, playlistStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(playlist);
                }

                return await Task.FromResult(new PlayListModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<bool> DeletePlayList(PlayListModel playlist)
        {
            try
            {
                string endpoint = $"PlayLists/deletePlayList/{playlist.ID}";

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
    }
}
