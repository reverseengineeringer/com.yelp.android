package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsPromptResult;
import android.widget.EditText;

final class gw$6
  implements DialogInterface.OnClickListener
{
  gw$6(JsPromptResult paramJsPromptResult, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    xo.confirm(xp.getText().toString());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gw.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */