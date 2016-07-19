package com.yelp.android.ui.activities.addphoto;

import android.app.Dialog;
import com.yelp.android.ui.dialogs.AlertDialogFragment;

class AddBusinessPhoto$1
  implements b.a
{
  AddBusinessPhoto$1(AddBusinessPhoto paramAddBusinessPhoto) {}
  
  public void a()
  {
    a.showLoadingDialog(null, AddBusinessPhoto.a(a), 2131166073);
  }
  
  public void a(String paramString)
  {
    AddBusinessPhoto.a(a, paramString);
    if ((AddBusinessPhoto.b(a) == null) || (!AddBusinessPhoto.b(a).isShowing())) {
      AddBusinessPhoto.c(a);
    }
  }
  
  public void b()
  {
    AlertDialogFragment localAlertDialogFragment = AlertDialogFragment.a(a.getString(2131165867), a.getString(2131166783));
    localAlertDialogFragment.a(AddBusinessPhoto.d(a));
    localAlertDialogFragment.show(a.getSupportFragmentManager(), null);
  }
  
  public void c()
  {
    a.hideLoadingDialog();
    AddBusinessPhoto.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.AddBusinessPhoto.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */