package com.yelp.android.ui.activities.gallery;

import android.content.Intent;
import com.yelp.android.ui.activities.media.b;
import com.yelp.android.ui.activities.media.c;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.util.f;
import java.io.File;

class g
  implements b
{
  g(ActivityChooseFromGallery paramActivityChooseFromGallery) {}
  
  public void a()
  {
    ActivityChooseFromGallery.i(a);
  }
  
  public void a(c paramc)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("extra_image", b);
    localIntent.putExtra("extra_file_path", a.getAbsolutePath());
    f.a(localIntent, "extra_media_source", ImageInputHelper.ImageSource.GALLERY);
    a.setResult(-1, localIntent);
    a.finish();
  }
  
  public void b()
  {
    AlertDialogFragment.a(a.getString(2131165778), a.getString(2131165779)).show(a.getSupportFragmentManager(), null);
    a.finishActivity(0);
  }
  
  public void c()
  {
    a.hideLoadingDialog();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */