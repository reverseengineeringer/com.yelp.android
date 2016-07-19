package com.yelp.android.ui.activities.reviews;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.controllers.UserPhotoUploadController;
import com.yelp.android.appdata.controllers.UserPhotoUploadController.a;
import com.yelp.android.ui.activities.media.ActivityMediaContributionDelegate;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.util.YelpLog;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Map;

public class ActivityPhotoPrompt
  extends YelpActivity
{
  private static UserPhotoUploadController a = new UserPhotoUploadController();
  private ImageView b;
  private TextView c;
  private TextView d;
  private View e;
  private View f;
  private View g;
  private View h;
  private AlertDialog i;
  private PhotoPromptType j;
  private File k;
  private boolean l = false;
  private t m;
  private boolean n;
  
  public static Intent a(Intent paramIntent, Context paramContext, String paramString, PhotoPromptType paramPhotoPromptType)
  {
    paramContext = new Intent(paramContext, ActivityPhotoPrompt.class);
    if (paramIntent != null) {
      paramContext.putExtra("next_intent", paramIntent);
    }
    paramContext.putExtra("user_name", paramString);
    paramPhotoPromptType.putType(paramContext);
    return paramContext;
  }
  
  private void a(File paramFile)
  {
    k = paramFile;
    int i1 = (int)getResources().getDimension(2131362117);
    m.a(k.getPath()).a(i1, i1).a(b);
  }
  
  private void a(String paramString)
  {
    a(new File(paramString));
  }
  
  private void b()
  {
    DialogInterface.OnClickListener local3 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (paramAnonymousInt == -1) {
          a();
        }
      }
    };
    i = new AlertDialog.Builder(this).setTitle(2131165500).setMessage(2131166421).setPositiveButton(2131166860, local3).setNegativeButton(2131165583, local3).setCancelable(true).show();
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      f.setVisibility(8);
      g.setVisibility(8);
      h.setVisibility(0);
      return;
    }
    f.setVisibility(0);
    g.setVisibility(0);
    h.setVisibility(8);
  }
  
  private void c()
  {
    final View localView = findViewById(2131689897);
    localView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        localView.setPadding(0, 0, 0, ar.b(getApplicationContext()) / 8);
        ar.a(localView, this);
      }
    });
  }
  
  private void d()
  {
    b(true);
    try
    {
      a.a(k.getAbsolutePath());
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      YelpLog.remoteError(this, "Error uploading photo", localFileNotFoundException);
      as.a(getAppData().getString(2131165375), 0);
      k = null;
    }
  }
  
  private void e()
  {
    if (l)
    {
      c.setText(getString(2131166337, new Object[] { getIntent().getStringExtra("user_name") }));
      d.setText(2131166336);
      e.setVisibility(0);
      return;
    }
    c.setText(2131166659);
    d.setText(2131166346);
    e.setVisibility(8);
  }
  
  public void a()
  {
    a.b();
    Intent localIntent = getIntent();
    if ((localIntent.hasExtra("next_intent")) && (!n))
    {
      localIntent = (Intent)localIntent.getParcelableExtra("next_intent");
      localIntent.setExtrasClassLoader(getClassLoader());
      startActivity(localIntent);
      n = true;
    }
    finish();
  }
  
  public void a(boolean paramBoolean)
  {
    b(false);
    if (paramBoolean)
    {
      b.setOnClickListener(null);
      l = true;
      e();
      return;
    }
    showYesNoDialog(2131166549, 2131166469, 2131166600, 2131166549);
  }
  
  public void addPhotoButton(View paramView)
  {
    if (!l)
    {
      j.trackAddPhotoIri();
      openContextMenu(b);
    }
  }
  
  public void doneButton(View paramView)
  {
    a();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfilePhotoPrompt;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return j.getAdditionalParametersForIri();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      return;
      if (paramInt2 == -1)
      {
        a(new File(paramIntent.getStringExtra("extra_file_path")));
        b(true);
        d();
        return;
      }
    } while (paramInt2 != 0);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903111);
    j = PhotoPromptType.getType(getIntent());
    setTitle(j.getTitleText());
    b = ((ImageView)findViewById(2131690754));
    c = ((TextView)findViewById(2131689641));
    d = ((TextView)findViewById(2131689696));
    e = findViewById(2131690755);
    f = findViewById(2131689896);
    g = findViewById(2131689898);
    h = findViewById(2131689899);
    m = t.a(this);
    if (paramBundle == null) {
      a.b();
    }
    for (;;)
    {
      b.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          startActivityForResult(ActivityMediaContributionDelegate.b(ActivityPhotoPrompt.this), 1062);
        }
      });
      e();
      return;
      String str = paramBundle.getString("image_location");
      if (str != null) {
        a(str);
      }
      l = paramBundle.getBoolean("upload_done");
    }
  }
  
  protected void onDestroy()
  {
    if (i != null)
    {
      i.dismiss();
      i = null;
    }
    super.onDestroy();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131691021: 
      b();
      return true;
    }
    a();
    return true;
  }
  
  protected void onPause()
  {
    a.a(null);
    super.onPause();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (l) {
      getMenuInflater().inflate(2131755021, paramMenu);
    }
    for (;;)
    {
      return true;
      getMenuInflater().inflate(2131755045, paramMenu);
    }
  }
  
  protected void onResume()
  {
    c();
    a.a(new UserPhotoUploadController.a()
    {
      public void a(boolean paramAnonymousBoolean)
      {
        ActivityPhotoPrompt.this.a(paramAnonymousBoolean);
      }
    });
    b(a.a());
    super.onResume();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (k != null) {
      paramBundle.putString("image_location", k.getPath());
    }
    paramBundle.putBoolean("upload_done", l);
  }
  
  public void onYesNoDialogSelection(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean)
    {
      d();
      return;
    }
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityPhotoPrompt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */