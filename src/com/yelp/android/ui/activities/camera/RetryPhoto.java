package com.yelp.android.ui.activities.camera;

import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.io.File;

public class RetryPhoto
  extends YelpActivity
{
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramInt2 == -1) {
        startService((Intent)getIntent().getParcelableExtra("retry_service_intent"));
      }
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    startActivityForResult(PreviewPhoto.a(this, new File(getIntent().getStringExtra("file_path")), true, getText(2131166925), getText(2131166469)), 100);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.RetryPhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */