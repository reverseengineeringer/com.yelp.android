package com.yelp.android.ui.dialogs;

import android.annotation.SuppressLint;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.l;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.fk.a;
import com.yelp.android.ui.activities.camera.TakePhoto;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.io.File;

public class DlgAddPhotoCaption
  extends DialogFragment
{
  private EditText a;
  private CheckBox b;
  private DialogInterface.OnClickListener c;
  private boolean d;
  private File e;
  
  public static DlgAddPhotoCaption a(Intent paramIntent)
  {
    DlgAddPhotoCaption localDlgAddPhotoCaption = new DlgAddPhotoCaption();
    e = TakePhoto.a(paramIntent);
    return localDlgAddPhotoCaption;
  }
  
  public static void a(Intent paramIntent, YelpActivity paramYelpActivity, ApiRequest.b<fk.a> paramb, l paraml, String paramString)
  {
    paramIntent = a(paramIntent);
    paramIntent.a(paramb, paramYelpActivity, false);
    paramIntent.a();
    paramIntent.show(paraml.a(), paramString);
  }
  
  public void a()
  {
    d = true;
  }
  
  public void a(ApiRequest.b<fk.a> paramb, YelpActivity paramYelpActivity, boolean paramBoolean)
  {
    c = new DlgAddPhotoCaption.2(this, paramBoolean, paramb, paramYelpActivity);
  }
  
  public String b()
  {
    return a.getText().toString();
  }
  
  public boolean c()
  {
    if (b != null) {
      return b.isChecked();
    }
    return false;
  }
  
  @SuppressLint({"InflateParams"})
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    localBuilder.setTitle(2131165791);
    View localView1 = LayoutInflater.from(getActivity()).inflate(2130903214, null);
    b = ((CheckBox)localView1.findViewById(2131689653));
    View localView2 = localView1.findViewById(2131690156);
    if (d) {}
    for (int i = 0;; i = 8)
    {
      b.setVisibility(i);
      localView2.setVisibility(i);
      a = ((EditText)localView1.findViewById(2131690155));
      a.setSelectAllOnFocus(true);
      if ((paramBundle != null) && (paramBundle.containsKey("photo_file_path"))) {
        e = new File(paramBundle.getString("photo_file_path"));
      }
      if ((e != null) && (e.exists())) {
        new DlgAddPhotoCaption.1(this, localView1).execute(new File[] { e });
      }
      localBuilder.setView(localView1);
      localBuilder.setPositiveButton(2131166290, c);
      localBuilder.setNegativeButton(17039360, null);
      return localBuilder.create();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (e != null) {
      paramBundle.putString("photo_file_path", e.getAbsolutePath());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.DlgAddPhotoCaption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */