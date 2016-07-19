package com.yelp.android.ui.activities.media;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;

public class ActivityMediaContributionDelegate
  extends Activity
{
  public static Intent a(Context paramContext)
  {
    return a(paramContext, null, false);
  }
  
  public static Intent a(Context paramContext, int paramInt)
  {
    paramContext = new Intent(paramContext, ActivityMediaContributionDelegate.class);
    paramContext.putExtra("CameraId", paramInt);
    paramContext.putExtra("extra_disable_video_for_reviews", true);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, ActivityMediaContributionDelegate.class);
    paramContext.putExtra("extra_business_id", paramString);
    paramContext.putExtra("extra_disable_video_for_reviews", paramBoolean);
    return paramContext;
  }
  
  public static boolean a(Intent paramIntent)
  {
    if (paramIntent == null) {}
    while (paramIntent.getBooleanExtra("extra_disable_video_for_reviews", false)) {
      return false;
    }
    return true;
  }
  
  public static Intent b(Context paramContext)
  {
    return a(paramContext, -1);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    setResult(paramInt2, paramIntent);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str;
    if (paramBundle == null)
    {
      paramBundle = getIntent();
      boolean bool = paramBundle.getBooleanExtra("extra_disable_video_for_reviews", false);
      str = paramBundle.getStringExtra("extra_business_id");
      if (!bool) {
        break label53;
      }
    }
    label53:
    for (paramBundle = MediaStoreUtil.MediaType.PHOTO;; paramBundle = MediaStoreUtil.MediaType.PHOTO_AND_VIDEO)
    {
      startActivityForResult(ActivityChooseFromGallery.a(this, paramBundle, true, true, str), 1062);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.media.ActivityMediaContributionDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */