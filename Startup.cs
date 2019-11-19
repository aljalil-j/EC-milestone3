using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NEW.Startup))]
namespace NEW
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
