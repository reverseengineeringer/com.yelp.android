package com.yelp.android.ui.activities;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.EditText;
import com.yelp.android.appdata.ap;

public class fi
  extends Dialog
{
  private final EditText a;
  
  public fi(Context paramContext, int paramInt, ap paramap, PendingIntent paramPendingIntent)
  {
    super(paramContext, paramInt);
    setTitle(2131166501);
    paramContext = getLayoutInflater().inflate(2130903186, null, false);
    getWindow().addContentView(paramContext, new ViewGroup.LayoutParams(-1, -2));
    getWindow().setLayout(-1, -2);
    a = ((EditText)paramContext.findViewById(2131493461));
    paramContext.findViewById(2131493034).setOnClickListener(new fj(this, paramap, paramPendingIntent));
  }
  
  public fi(Context paramContext, ap paramap, PendingIntent paramPendingIntent)
  {
    this(paramContext, 2131689817, paramap, paramPendingIntent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */