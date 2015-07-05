package com.yelp.android.ui.util;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.panels.SpanOfPhotosView;

public class br
  implements View.OnClickListener
{
  final PendingIntent a;
  final boolean b;
  public w c;
  public bc d;
  
  public br(PendingIntent paramPendingIntent, boolean paramBoolean, bc parambc)
  {
    a = paramPendingIntent;
    b = paramBoolean;
    d = parambc;
  }
  
  public void onClick(View paramView)
  {
    if (c != null) {
      c.a();
    }
    Object localObject = paramView.getTag();
    int i;
    if ((a != null) && (localObject != null) && ((localObject instanceof Integer)))
    {
      i = ((Integer)localObject).intValue();
      localObject = new Intent();
      ((Intent)localObject).putExtra("extra.media_index", i);
      ((Intent)localObject).putExtra(SpanOfPhotosView.a, b);
    }
    for (;;)
    {
      try
      {
        a.send(paramView.getContext(), -1, (Intent)localObject);
        return;
      }
      catch (PendingIntent.CanceledException paramView) {}
      if ((localObject != null) && ((localObject instanceof Integer)))
      {
        i = ((Integer)localObject).intValue();
        d.a(paramView.getContext(), i);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */