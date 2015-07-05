package com.facebook.internal;

import android.content.Context;

class LikeActionController$CreateLikeActionControllerWorkItem
  implements Runnable
{
  private LikeActionController.CreationCallback callback;
  private Context context;
  private String objectId;
  
  LikeActionController$CreateLikeActionControllerWorkItem(Context paramContext, String paramString, LikeActionController.CreationCallback paramCreationCallback)
  {
    context = paramContext;
    objectId = paramString;
    callback = paramCreationCallback;
  }
  
  public void run()
  {
    LikeActionController.access$3000(context, objectId, callback);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.CreateLikeActionControllerWorkItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */