package com.yelp.android.ui.dialogs;

import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v7.app.d.a;
import com.yelp.android.appdata.AppData;

public class TwoButtonDialog
  extends YelpAlertDialogFragment
{
  private DialogInterface.OnClickListener b;
  private DialogInterface.OnClickListener c;
  
  public static TwoButtonDialog a(int paramInt1, int paramInt2, int paramInt3)
  {
    return a(0, paramInt1, paramInt2, paramInt3);
  }
  
  public static TwoButtonDialog a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    String str4 = null;
    AppData localAppData = AppData.b();
    String str1;
    String str2;
    label22:
    String str3;
    if (paramInt1 == 0)
    {
      str1 = null;
      if (paramInt2 != 0) {
        break label56;
      }
      str2 = null;
      if (paramInt3 != 0) {
        break label67;
      }
      str3 = null;
      label29:
      if (paramInt4 != 0) {
        break label78;
      }
    }
    for (;;)
    {
      return a(str1, str2, str3, str4);
      str1 = localAppData.getString(paramInt1);
      break;
      label56:
      str2 = localAppData.getString(paramInt2);
      break label22;
      label67:
      str3 = localAppData.getString(paramInt3);
      break label29;
      label78:
      str4 = localAppData.getString(paramInt4);
    }
  }
  
  public static TwoButtonDialog a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    TwoButtonDialog localTwoButtonDialog = new TwoButtonDialog();
    paramString1 = b(paramString1, paramString2);
    paramString1.putString("positive_button", paramString4);
    paramString1.putString("negative_button", paramString3);
    localTwoButtonDialog.setArguments(paramString1);
    return localTwoButtonDialog;
  }
  
  public void a(DialogInterface.OnClickListener paramOnClickListener)
  {
    c = paramOnClickListener;
  }
  
  public void b(DialogInterface.OnClickListener paramOnClickListener)
  {
    b = paramOnClickListener;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Object localObject = getArguments().getString("title");
    String str2 = getArguments().getString("message");
    paramBundle = getArguments().getString("negative_button");
    String str1 = getArguments().getString("positive_button");
    localObject = c((String)localObject, str2);
    if (paramBundle != null) {
      ((d.a)localObject).b(paramBundle, b);
    }
    if (str1 != null) {
      ((d.a)localObject).a(str1, c);
    }
    return ((d.a)localObject).b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.TwoButtonDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */