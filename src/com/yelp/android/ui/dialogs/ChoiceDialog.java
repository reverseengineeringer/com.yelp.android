package com.yelp.android.ui.dialogs;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ChoiceDialog
  extends YelpActivity
{
  private int a;
  private String[] b;
  
  public static int a(Intent paramIntent)
  {
    return paramIntent.getIntExtra("extra.choices", -1);
  }
  
  private AlertDialog a()
  {
    o localo = new o(this);
    return new AlertDialog.Builder(this).setItems(b, localo).setTitle(a).setOnCancelListener(localo).create();
  }
  
  public static Intent a(Context paramContext, int paramInt, String[] paramArrayOfString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClass(paramContext, ChoiceDialog.class);
    localIntent.putExtra("extra.title", paramInt);
    localIntent.putExtra("extra.choices", paramArrayOfString);
    localIntent.addFlags(67108864);
    return localIntent;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTheme(2131689817);
    Intent localIntent = getIntent();
    a = localIntent.getIntExtra("extra.title", 0);
    b = localIntent.getStringArrayExtra("extra.choices");
    if (paramBundle == null) {
      showDialog(11234);
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    return a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.ChoiceDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */