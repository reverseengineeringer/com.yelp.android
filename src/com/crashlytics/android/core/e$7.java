package com.crashlytics.android.core;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.ScrollView;
import android.widget.TextView;
import io.fabric.sdk.android.services.settings.o;

class e$7
  implements Runnable
{
  e$7(e parame, Activity paramActivity, e.b paramb, m paramm, o paramo) {}
  
  public void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(a);
    Object localObject = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        b.a(true);
        paramAnonymousDialogInterface.dismiss();
      }
    };
    float f = a.getResources().getDisplayMetrics().density;
    int i = e.a(e, f, 5);
    TextView localTextView = new TextView(a);
    localTextView.setAutoLinkMask(15);
    localTextView.setText(c.b());
    localTextView.setTextAppearance(a, 16973892);
    localTextView.setPadding(i, i, i, i);
    localTextView.setFocusable(false);
    ScrollView localScrollView = new ScrollView(a);
    localScrollView.setPadding(e.a(e, f, 14), e.a(e, f, 2), e.a(e, f, 10), e.a(e, f, 12));
    localScrollView.addView(localTextView);
    localBuilder.setView(localScrollView).setTitle(c.a()).setCancelable(false).setNeutralButton(c.c(), (DialogInterface.OnClickListener)localObject);
    if (d.d)
    {
      localObject = new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          b.a(false);
          paramAnonymousDialogInterface.dismiss();
        }
      };
      localBuilder.setNegativeButton(c.e(), (DialogInterface.OnClickListener)localObject);
    }
    if (d.f)
    {
      localObject = new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          e.a(true);
          b.a(true);
          paramAnonymousDialogInterface.dismiss();
        }
      };
      localBuilder.setPositiveButton(c.d(), (DialogInterface.OnClickListener)localObject);
    }
    localBuilder.show();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.e.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */