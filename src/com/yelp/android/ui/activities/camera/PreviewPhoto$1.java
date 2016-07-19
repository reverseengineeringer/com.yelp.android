package com.yelp.android.ui.activities.camera;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import java.io.File;

class PreviewPhoto$1
  implements View.OnClickListener
{
  PreviewPhoto$1(PreviewPhoto paramPreviewPhoto) {}
  
  public void onClick(View paramView)
  {
    new File(a.getIntent().getStringExtra("extra.file_path")).delete();
    a.setResult(0);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.PreviewPhoto.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */