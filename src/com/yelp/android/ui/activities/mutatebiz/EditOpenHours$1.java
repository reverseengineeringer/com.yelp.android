package com.yelp.android.ui.activities.mutatebiz;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.dialogs.ListDialogFragment;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import java.util.EnumSet;

class EditOpenHours$1
  implements View.OnClickListener
{
  EditOpenHours$1(EditOpenHours paramEditOpenHours) {}
  
  public void onClick(View paramView)
  {
    if (a.getIntent().getData() == null) {}
    for (int i = 2131165464;; i = 2131165607)
    {
      EditOpenHours.a(a).a(i, EnumSet.of(ImageInputHelper.ImageSource.CAMERA, ImageInputHelper.ImageSource.GALLERY), a).show(a.getSupportFragmentManager(), "dialog_photo");
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditOpenHours.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */