package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.concurrent.ConcurrentHashMap;

class LikeActionController$4$1
  implements Runnable
{
  LikeActionController$4$1(LikeActionController.4 param4, boolean paramBoolean, Context paramContext) {}
  
  public void run()
  {
    if (val$shouldClearDisk)
    {
      LikeActionController.access$302((LikeActionController.access$300() + 1) % 1000);
      val$broadcastContext.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", LikeActionController.access$300()).apply();
      LikeActionController.access$400().clear();
      LikeActionController.access$500().clearCache();
    }
    LikeActionController.access$600(val$broadcastContext, null, "com.facebook.sdk.LikeActionController.DID_RESET");
    LikeActionController.access$202(false);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.4.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */