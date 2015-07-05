package com.facebook.internal;

import android.app.Activity;
import android.os.Bundle;
import com.facebook.RequestBatch;

class LikeActionController$6
  implements LikeActionController.RequestCompletionCallback
{
  LikeActionController$6(LikeActionController paramLikeActionController, Activity paramActivity, Bundle paramBundle) {}
  
  public void onComplete()
  {
    if (Utility.isNullOrEmpty(LikeActionController.access$1900(this$0)))
    {
      localObject = new Bundle();
      ((Bundle)localObject).putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
      LikeActionController.access$1800(LikeActionController.access$1700(this$0), this$0, "com.facebook.sdk.LikeActionController.DID_ERROR", (Bundle)localObject);
      return;
    }
    Object localObject = new RequestBatch();
    LikeActionController.PublishLikeRequestWrapper localPublishLikeRequestWrapper = new LikeActionController.PublishLikeRequestWrapper(this$0, LikeActionController.access$1900(this$0));
    localPublishLikeRequestWrapper.addToBatch((RequestBatch)localObject);
    ((RequestBatch)localObject).addCallback(new LikeActionController.6.1(this, localPublishLikeRequestWrapper));
    ((RequestBatch)localObject).executeAsync();
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */