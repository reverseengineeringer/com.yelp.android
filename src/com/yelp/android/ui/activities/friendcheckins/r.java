package com.yelp.android.ui.activities.friendcheckins;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Checkable;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.widgets.j;

public final class r
  implements View.OnClickListener, j
{
  final PendingIntent a;
  final String b;
  final String c;
  
  public r(PendingIntent paramPendingIntent, String paramString1, String paramString2)
  {
    a = paramPendingIntent;
    b = paramString1;
    c = paramString2;
  }
  
  private Intent a(View paramView)
  {
    paramView = (YelpCheckIn)paramView.getTag();
    Intent localIntent = new Intent();
    localIntent.putExtra(b, paramView);
    return localIntent;
  }
  
  public <CheckableView extends View,  extends Checkable> void onCheckedChanged(CheckableView paramCheckableView)
  {
    Intent localIntent = a(paramCheckableView);
    localIntent.putExtra(c, ((Checkable)paramCheckableView).isChecked());
    try
    {
      a.send(paramCheckableView.getContext(), -1, localIntent);
      return;
    }
    catch (PendingIntent.CanceledException paramCheckableView) {}
  }
  
  public void onClick(View paramView)
  {
    try
    {
      a.send(paramView.getContext(), -1, a(paramView));
      return;
    }
    catch (PendingIntent.CanceledException paramView) {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */