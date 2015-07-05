package com.yelp.android.ui.dialogs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Map;

class bf
  implements DialogInterface.OnClickListener
{
  bf(SimpleListDialogFragment paramSimpleListDialogFragment, ArrayList paramArrayList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (b.a != null)
    {
      Object localObject = (Map)a.get(paramInt);
      paramDialogInterface = (String)((Map)localObject).get("text");
      localObject = (Parcelable)((Map)localObject).get("data");
      b.a.a(paramDialogInterface, (Parcelable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */