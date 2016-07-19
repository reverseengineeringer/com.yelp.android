package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.b;

public class WhatsNewDialogFragment
  extends YelpBaseDialogFragment
{
  public static final b a = new b(7, 6);
  
  public static WhatsNewDialogFragment a()
  {
    return new WhatsNewDialogFragment();
  }
  
  protected static boolean a(b paramb1, b paramb2, b paramb3)
  {
    if ((paramb3.a() == paramb1.a()) && (paramb3.b() == paramb1.b()))
    {
      if (paramb2 == null) {}
      while ((paramb2.a() != paramb1.a()) || (paramb2.b() != paramb1.b())) {
        return true;
      }
    }
    return false;
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    Object localObject = null;
    b localb = new b(paramString2);
    paramString2 = (String)localObject;
    if (paramString1 != null) {
      paramString2 = new b(paramString1);
    }
    return a(a, paramString2, localb);
  }
  
  public a getIri()
  {
    return ViewIri.WhatsNewPrompt;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    AppData.a(EventIri.WhatsNewPromptDismiss);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = LayoutInflater.from(getActivity()).inflate(2130903562, null);
    paramBundle.findViewById(16908313).setOnClickListener(new WhatsNewDialogFragment.1(this));
    return new AlertDialog.Builder(getActivity()).setView(paramBundle).create();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.WhatsNewDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */