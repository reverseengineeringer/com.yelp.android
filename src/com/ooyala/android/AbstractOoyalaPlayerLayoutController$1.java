package com.ooyala.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class AbstractOoyalaPlayerLayoutController$1
  implements DialogInterface.OnClickListener
{
  AbstractOoyalaPlayerLayoutController$1(AbstractOoyalaPlayerLayoutController paramAbstractOoyalaPlayerLayoutController, String[] paramArrayOfString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!val$items[paramInt].equals("None")) {}
    for (paramDialogInterface = val$items[paramInt];; paramDialogInterface = null)
    {
      this$0._player.setClosedCaptionsLanguage(paramDialogInterface);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.AbstractOoyalaPlayerLayoutController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */