using System.Web;
using System.Web.Optimization;

namespace Accountant.UI
{
    public class BundleConfig
    {

        public static void RegisterBundles(BundleCollection bundles)
        {



            // Vendor scripts
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-3.1.1.min.js"));

            // jQuery Validation
            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
            "~/Scripts/jquery.validate.min.js"));

			// jQuery UI
			bundles.Add(new ScriptBundle("~/bundles/jqueryui").Include(
			"~/Scripts/jquery-ui-1.12.1.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.min.js"));

            // Inspinia script
            bundles.Add(new ScriptBundle("~/bundles/inspinia").Include(
                      "~/Scripts/app/inspinia.js"));

            // Inspinia skin config script
            bundles.Add(new ScriptBundle("~/bundles/skinConfig").Include(
                "~/Scripts/app/skin.config.min.js"));

            // SlimScroll
            bundles.Add(new ScriptBundle("~/plugins/slimScroll").Include(
                      "~/Scripts/plugins/slimScroll/jquery.slimscroll.min.js"));

            // Peity
            bundles.Add(new ScriptBundle("~/plugins/peity").Include(
                "~/Scripts/plugins/peity/jquery.peity.min.js"));

            // jQuery plugins
            bundles.Add(new ScriptBundle("~/plugins/metsiMenu").Include(
                      "~/Scripts/plugins/metisMenu/metisMenu.min.js"));

            bundles.Add(new ScriptBundle("~/plugins/pace").Include(
                      "~/Scripts/plugins/pace/pace.min.js"));

           

            // CSS style (bootstrap/inspinia)
            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.min.css",
                      "~/Content/animate.css",
                      "~/Content/bootstrap-multiselect.css",
                      "~/Content/style.css"));


            bundles.Add(new ScriptBundle("~/bundles/multiselect").Include(
               "~/Scripts/bootstrap-multiselect.js"));

            // Font Awesome icons
            bundles.Add(new StyleBundle("~/font-awesome/css").Include(
                      "~/fonts/font-awesome/css/font-awesome.min.css", new CssRewriteUrlTransform()));

			// jasnyBootstrap styles
			bundles.Add(new StyleBundle("~/plugins/jasnyBootstrapStyles").Include(
					  "~/Content/jasny-bootstrap.min.css"));

			// jasnyBootstrap 
			bundles.Add(new ScriptBundle("~/plugins/jasnyBootstrap").Include(
					  "~/Scripts/jasny-bootstrap.min.js"));

            //dattables-js
            bundles.Add(new ScriptBundle("~/bundles/datatables").Include(
                      "~/Scripts/DataTables/media/js/jquery.dataTables.min.js",
                      "~/Scripts/DataTables/media/js/dataTables.bootstrap.min.js",
                      "~/Scripts/DataTables/extensions/Select/dataTables.select.min.js"));
            //datatables - css
            bundles.Add(new StyleBundle("~/Content/datatables").Include(
                       "~/Content/DataTables/media/css/jquery.dataTables.min.css"));


            //// Flot chart
            //bundles.Add(new ScriptBundle("~/plugins/flot").Include(
            //          "~/Scripts/plugins/flot/jquery.flot.js",
            //          "~/Scripts/plugins/flot/jquery.flot.tooltip.min.js",
            //          "~/Scripts/plugins/flot/jquery.flot.resize.js",
            //          "~/Scripts/plugins/flot/jquery.flot.pie.js",
            //          "~/Scripts/plugins/flot/jquery.flot.time.js",
            //          "~/Scripts/plugins/flot/jquery.flot.spline.js"));


            // Duallist Styless
            bundles.Add(new StyleBundle("~/plugins/duallistStyles").Include(
                      "~/Content/plugins/dualListbox/bootstrap-duallistbox.min.css"));

            // Duallist
            bundles.Add(new ScriptBundle("~/plugins/duallist").Include(
                      "~/Scripts/plugins/dualListbox/jquery.bootstrap-duallistbox.js"));
        }
    }
}
