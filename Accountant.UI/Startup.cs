using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Accountant.UI.Startup))]
namespace Accountant.UI
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
