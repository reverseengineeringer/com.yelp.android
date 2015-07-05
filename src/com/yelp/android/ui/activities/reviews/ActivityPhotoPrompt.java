package com.yelp.android.ui.activities.reviews;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.controllers.UserPhotoUploadController;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.cr;
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
  private j m;
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
  
  private void a()
  {
    e locale = new e(this);
    i = new AlertDialog.Builder(this).setTitle(2131165373).setMessage(2131166394).setPositiveButton(2131166906, locale).setNegativeButton(2131165457, locale).setCancelable(true).show();
  }
  
  private void a(File paramFile)
  {
    k = paramFile;
    int i1 = (int)getResources().getDimension(2131427540);
    m.a(k).a(i1, i1).a(b);
  }
  
  private void a(String paramString)
  {
    a(new File(paramString));
  }
  
  private void b()
  {
    View localView = findViewById(2131493238);
    localView.getViewTreeObserver().addOnGlobalLayoutListener(new f(this, localView));
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
    b(true);
    try
    {
      a.a(k.getAbsolutePath());
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      YelpLog.error(this, "Error uploading photo", localFileNotFoundException);
      cr.a(getAppData().getString(2131165239), 0);
      k = null;
    }
  }
  
  private void d()
  {
    if (l)
    {
      c.setText(getString(2131166303, new Object[] { getIntent().getStringExtra("user_name") }));
      d.setText(2131166302);
      e.setVisibility(0);
      return;
    }
    c.setText(2131166681);
    d.setText(2131166327);
    e.setVisibility(8);
  }
  
  public void a(boolean paramBoolean)
  {
    b(false);
    if (paramBoolean)
    {
      b.setOnClickListener(null);
      l = true;
      d();
      return;
    }
    showYesNoDialog(2131166549, 2131166464, 2131166592, 2131166549);
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
    finish();
  }
  
  public void finish()
  {
    a.b();
    Intent localIntent = getIntent();
    if ((localIntent.hasExtra("next_intent")) && (!n))
    {
      startActivity((Intent)localIntent.getParcelableExtra("next_intent"));
      n = true;
    }
    super.finish();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfilePhotoPrompt;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
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
        c();
        return;
      }
    } while (paramInt2 != 0);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903099);
    j = PhotoPromptType.getType(getIntent());
    setTitle(j.getTitleText());
    b = ((ImageView)findViewById(2131493918));
    c = ((TextView)findViewById(2131492996));
    d = ((TextView)findViewById(2131493033));
    e = findViewById(2131493919);
    f = findViewById(2131493237);
    g = findViewById(2131493239);
    h = findViewById(2131493240);
    m = h.a(this);
    if (paramBundle == null) {
      a.b();
    }
    for (;;)
    {
      b.setOnClickListener(new c(this));
      d();
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
    case 2131494148: 
      a();
      return true;
    }
    finish();
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
      getMenuInflater().inflate(2131755019, paramMenu);
    }
    for (;;)
    {
      return true;
      getMenuInflater().inflate(2131755040, paramMenu);
    }
  }
  
  protected void onResume()
  {
    b();
    a.a(new d(this));
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
      c();
      return;
    }
    finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityPhotoPrompt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */