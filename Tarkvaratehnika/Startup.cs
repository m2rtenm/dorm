using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Tarkvaratehnika.Startup))]
namespace Tarkvaratehnika
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
