package com.yelp.android.ui.activities.camera;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.MenuItem;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import java.io.File;

@TargetApi(14)
public class ActivityVideoCapture
  extends YelpActivity
  implements ab, x
{
  private VideoPreviewFragment a;
  private String b;
  private String c;
  
  public static Intent a(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, false);
  }
  
  public static Intent a(Context paramContext, String paramString, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, ActivityVideoCapture.class);
    paramContext.putExtra("business_id", paramString);
    paramContext.putExtra("extra_started_from_gallery", paramBoolean);
    return paramContext;
  }
  
  public void a(String paramString)
  {
    c = paramString;
    a = VideoPreviewFragment.a(paramString, b);
    getSupportFragmentManager().beginTransaction().replace(2131493332, a, "preview").addToBackStack(null).commit();
    supportInvalidateOptionsMenu();
  }
  
  public void b()
  {
    setResult(-1, TakePhoto.a(new File(c), ImageInputHelper.ImageSource.CAMERA, true));
    finish();
  }
  
  public void c()
  {
    new File(c).delete();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    supportRequestWindowFeature(9);
    super.onCreate(paramBundle);
    Object localObject = getIntent();
    b = ((Intent)localObject).getStringExtra("business_id");
    boolean bool = ((Intent)localObject).getBooleanExtra("extra_started_from_gallery", false);
    localObject = getSupportFragmentManager();
    if (((FragmentManager)localObject).findFragmentByTag("capture") == null)
    {
      VideoCaptureFragment localVideoCaptureFragment = VideoCaptureFragment.a(b, bool);
      ((FragmentManager)localObject).beginTransaction().replace(2131493332, localVideoCaptureFragment, "capture").commit();
    }
    if (paramBundle != null)
    {
      c = paramBundle.getString("video_file_path");
      a = ((VideoPreviewFragment)((FragmentManager)localObject).findFragmentByTag("preview"));
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    onBackPressed();
    return true;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("video_file_path", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.ActivityVideoCapture
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */