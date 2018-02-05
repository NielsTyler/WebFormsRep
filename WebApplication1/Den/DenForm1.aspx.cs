using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1.Den
{
    public partial class DenForm1 : System.Web.UI.Page
    {
        int TestField = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                GuestResponse rsvp = new GuestResponse();

                if (TryUpdateModel(rsvp, new FormValueProvider(ModelBindingExecutionContext)))
                {
                    ResponseRepository.GetRepository().AddResponse(rsvp);
                }
            }
            else
            {
                ViewState["testViewState"] = 3;
            }
        }

        protected void DenCommand(object sender, CommandEventArgs e)
        {
            ViewState["testViewState"] = (int)ViewState["testViewState"] + 1;
            //testLabel.Text = (++TestField).ToString();
            testLabel.Text += ViewState["testViewState"];

            testHiddenField.Value = "What are hell is going on here?";
        }

        protected void FileUpload1_Load(object sender, EventArgs e)
        {
            Debug.Write("asd");
        }
    }
}