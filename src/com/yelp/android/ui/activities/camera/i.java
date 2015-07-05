package com.yelp.android.ui.activities.camera;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import java.io.File;

class i
  implements View.OnClickListener
{
  i(PreviewPhoto paramPreviewPhoto) {}
  
  public void onClick(View paramView)
  {
    new File(a.getIntent().getStringExtra("file")).delete();
    a.setResult(0);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */