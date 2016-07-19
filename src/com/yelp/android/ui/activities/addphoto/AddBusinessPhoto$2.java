package com.yelp.android.ui.activities.addphoto;

import android.app.Dialog;
import com.yelp.android.ui.activities.media.a.a;
import com.yelp.android.ui.activities.media.a.b;
import com.yelp.android.ui.dialogs.AlertDialogFragment;

class AddBusinessPhoto$2
  implements a.a
{
  AddBusinessPhoto$2(AddBusinessPhoto paramAddBusinessPhoto) {}
  
  public void a()
  {
    a.showLoadingDialog(null, AddBusinessPhoto.a(a), 2131166073);
  }
  
  public void a(a.b paramb)
  {
    AddBusinessPhoto.a(a, a);
    if ((AddBusinessPhoto.b(a) == null) || (!AddBusinessPhoto.b(a).isShowing())) {
      AddBusinessPhoto.e(a);
    }
  }
  
  public void b()
  {
    AlertDialogFragment localAlertDialogFragment = AlertDialogFragment.a(a.getString(2131165867), a.getString(2131165868));
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
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.AddBusinessPhoto.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */