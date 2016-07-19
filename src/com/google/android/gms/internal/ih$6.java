package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsPromptResult;
import android.widget.EditText;

final class ih$6
  implements DialogInterface.OnClickListener
{
  ih$6(JsPromptResult paramJsPromptResult, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.confirm(b.getText().toString());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ih.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */