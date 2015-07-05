package com.yelp.android.ui.dialogs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.yelp.android.util.r;

class b
  implements DialogInterface.OnClickListener
{
  b(CallNumberDialog paramCallNumberDialog) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.getArguments().getString("phone.number");
    a.startActivity(r.a(paramDialogInterface));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */