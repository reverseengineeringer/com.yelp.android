package com.yelp.android.ui.dialogs;

import android.annotation.SuppressLint;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.gw;
import com.yelp.android.appdata.webrequests.m;
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
  
  public static void a(Intent paramIntent, YelpActivity paramYelpActivity, m<gw> paramm, FragmentManager paramFragmentManager, String paramString)
  {
    paramIntent = a(paramIntent);
    paramIntent.a(paramm, paramYelpActivity, false);
    paramIntent.a();
    paramIntent.show(paramFragmentManager.beginTransaction(), paramString);
  }
  
  public void a()
  {
    d = true;
  }
  
  public void a(m<gw> paramm, YelpActivity paramYelpActivity, boolean paramBoolean)
  {
    c = new u(this, paramBoolean, paramm, paramYelpActivity);
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
    localBuilder.setTitle(2131165715);
    View localView1 = LayoutInflater.from(getActivity()).inflate(2130903191, null);
    b = ((CheckBox)localView1.findViewById(2131492998));
    View localView2 = localView1.findViewById(2131493475);
    if (d) {}
    for (int i = 0;; i = 8)
    {
      b.setVisibility(i);
      localView2.setVisibility(i);
      a = ((EditText)localView1.findViewById(2131493474));
      a.setSelectAllOnFocus(true);
      if (!n.a(11))
      {
        ((TextView)localView1.findViewById(2131493476)).setTextColor(-1);
        a.setTextColor(-1);
      }
      if ((paramBundle != null) && (paramBundle.containsKey("photo_file_path"))) {
        e = new File(paramBundle.getString("photo_file_path"));
      }
      if ((e != null) && (e.exists())) {
        new t(this, localView1).execute(new File[] { e });
      }
      localBuilder.setView(localView1);
      localBuilder.setPositiveButton(2131166237, c);
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