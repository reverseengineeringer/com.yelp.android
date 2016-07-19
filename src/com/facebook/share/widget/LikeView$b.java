package com.facebook.share.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.internal.p;
import com.facebook.internal.u;

class LikeView$b
  extends BroadcastReceiver
{
  private LikeView$b(LikeView paramLikeView) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int j = 1;
    paramContext = paramIntent.getAction();
    paramIntent = paramIntent.getExtras();
    int i = j;
    if (paramIntent != null)
    {
      String str = paramIntent.getString("com.facebook.sdk.LikeActionController.OBJECT_ID");
      i = j;
      if (!u.a(str))
      {
        if (!u.a(LikeView.b(a), str)) {
          break label62;
        }
        i = j;
      }
    }
    if (i == 0) {}
    label62:
    label120:
    do
    {
      do
      {
        return;
        i = 0;
        break;
        if ("com.facebook.sdk.LikeActionController.UPDATED".equals(paramContext))
        {
          LikeView.c(a);
          return;
        }
        if (!"com.facebook.sdk.LikeActionController.DID_ERROR".equals(paramContext)) {
          break label120;
        }
      } while (LikeView.d(a) == null);
      LikeView.d(a).a(p.a(paramIntent));
      return;
    } while (!"com.facebook.sdk.LikeActionController.DID_RESET".equals(paramContext));
    LikeView.a(a, LikeView.b(a), LikeView.e(a));
    LikeView.c(a);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.LikeView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */