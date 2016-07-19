package com.yelp.android.ui.activities.addphoto;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.AsyncTask;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.ui.activities.support.b.b;

class AddBusinessPhoto$4
  implements b.b
{
  AddBusinessPhoto$4(AddBusinessPhoto paramAddBusinessPhoto) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest)
  {
    AddBusinessPhoto localAddBusinessPhoto;
    if (AddBusinessPhoto.b(a) == null)
    {
      paramApiRequest = new AlertDialog.Builder(a);
      paramApiRequest.setCancelable(false);
      paramApiRequest.setTitle(2131165586);
      localAddBusinessPhoto = a;
      if (!a.getIntent().getBooleanExtra("extra.is_video", false)) {
        break label122;
      }
    }
    label122:
    for (int i = 2131165797;; i = 2131165796)
    {
      paramApiRequest.setMessage(localAddBusinessPhoto.getString(i));
      paramApiRequest.setPositiveButton(2131166858, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          AddBusinessPhoto.f(a).cancel(true);
          a.setResult(0);
          a.finish();
        }
      });
      paramApiRequest.setNegativeButton(2131166239, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (AddBusinessPhoto.g(a))
          {
            a.showLoadingDialog(null, AddBusinessPhoto.a(a), 2131166073);
            return;
          }
          if (a.getIntent().getBooleanExtra("extra.is_video", false))
          {
            AddBusinessPhoto.c(a);
            return;
          }
          AddBusinessPhoto.e(a);
        }
      });
      AddBusinessPhoto.a(a, paramApiRequest.create());
      AddBusinessPhoto.b(a).show();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.AddBusinessPhoto.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */