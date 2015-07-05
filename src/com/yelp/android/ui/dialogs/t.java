package com.yelp.android.ui.dialogs;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.view.View;
import android.widget.ImageView;
import com.yelp.android.ui.util.ImageInputHelper;
import java.io.File;

class t
  extends AsyncTask<File, Void, Bitmap>
{
  t(DlgAddPhotoCaption paramDlgAddPhotoCaption, View paramView) {}
  
  protected Bitmap a(File... paramVarArgs)
  {
    return ImageInputHelper.a(paramVarArgs[0]);
  }
  
  protected void a(Bitmap paramBitmap)
  {
    ImageView localImageView = (ImageView)a.findViewById(2131493062);
    if (localImageView != null)
    {
      localImageView.setImageBitmap(paramBitmap);
      return;
    }
    paramBitmap.recycle();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */