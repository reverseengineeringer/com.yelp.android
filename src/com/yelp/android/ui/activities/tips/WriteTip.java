package com.yelp.android.ui.activities.tips;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.ToggleButton;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.EditTipRequest;
import com.yelp.android.appdata.webrequests.PhotoUploadRequestBase;
import com.yelp.android.appdata.webrequests.SaveTipRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.Tip.TempTip;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.services.TipUploadService;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.al;
import com.yelp.android.ui.util.ce;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.z;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Map;
import java.util.TreeMap;

public class WriteTip
  extends YelpActivity
  implements TextView.OnEditorActionListener, al
{
  protected Bitmap a;
  private EditText b;
  private String c;
  private WebImageView d;
  private ToggleButton e;
  private ToggleButton f;
  private ImageInputHelper g;
  private boolean h = false;
  private Tip i;
  private r j;
  private WriteTip.TipAction k;
  private ApiRequest<Void, ?, ?> l;
  private final View.OnClickListener m = new n(this);
  private final View.OnClickListener n = new o(this);
  
  public static Intent a(Context paramContext, Tip paramTip, String paramString)
  {
    paramContext = new Intent(paramContext, WriteTip.class);
    paramContext.setAction(WriteTip.TipAction.EDIT.name());
    paramContext.putExtra("tip", paramTip);
    paramContext.putExtra("business_id", paramString);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return a(paramContext, paramYelpBusiness.getId());
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, WriteTip.class);
    paramContext.setAction(WriteTip.TipAction.NEW.name());
    paramContext.putExtra("business_id", paramString);
    return paramContext;
  }
  
  private void c()
  {
    findViewById(2131493245).setVisibility(0);
  }
  
  private void d()
  {
    d.setImageResource(2130838503);
    g.a();
  }
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = paramBundle.getString("bundle message for dialogs");
    return new AlertDialog.Builder(this).setIcon(0).setCancelable(false).setTitle(2131165315).setMessage(paramBundle).setPositiveButton(2131165699, new l(this)).create();
  }
  
  public void a(File paramFile)
  {
    hideLoadingDialog();
    showInfoDialog(2131165338, 2131165772);
  }
  
  protected boolean a()
  {
    if ((i != null) && (i.getPhoto() != null)) {}
    while (a != null) {
      return true;
    }
    return false;
  }
  
  public boolean a(Bitmap paramBitmap, File paramFile, ImageInputHelper.ImageSource paramImageSource)
  {
    a = paramBitmap;
    h = true;
    d.setImageBitmap(paramBitmap);
    c();
    return false;
  }
  
  public Dialog b(Bundle paramBundle)
  {
    return new AlertDialog.Builder(this).setMessage(2131166711).setTitle(2131166713).setNegativeButton(17039360, null).setPositiveButton(2131166713, new m(this)).create();
  }
  
  public void b()
  {
    boolean bool4 = false;
    Object localObject1 = g.e();
    if (!h) {
      localObject1 = null;
    }
    String str = i.getText();
    Photo localPhoto = i.getPhoto();
    i.setText(b.getText().toString());
    if (h) {
      i.setEditedBitmap(a);
    }
    for (;;)
    {
      try
      {
        boolean bool1;
        boolean bool2;
        Object localObject2;
        if (k == WriteTip.TipAction.NEW)
        {
          localObject1 = new SaveTipRequest(c, b.getText().toString(), (File)localObject1);
          bool1 = f.isChecked();
          bool2 = e.isChecked();
          setResult(-1);
          localObject2 = i.getTempId();
          new ObjectDirtyEvent(i, "com.yelp.android.tips.add").a(this);
          if (g.d() == ImageInputHelper.ImageSource.CAMERA)
          {
            bool3 = true;
            if (k == WriteTip.TipAction.EDIT) {
              bool4 = true;
            }
            startService(TipUploadService.a(this, (PhotoUploadRequestBase)localObject1, bool3, bool1, bool2, bool4, (String)localObject2, str, localPhoto));
            finish();
          }
        }
        else
        {
          localObject1 = new EditTipRequest(i.getId(), b.getText().toString(), (File)localObject1);
          localObject2 = new Bundle();
          ((Bundle)localObject2).putParcelable(TipFeedEntry.CONTENT_KEY, i);
          Intent localIntent = getIntent();
          localIntent.putExtra("bundle to be passed", (Bundle)localObject2);
          setResult(-1, localIntent);
          localObject2 = i.getId();
          new ObjectDirtyEvent(i, "com.yelp.android.tips.update").a(this);
          bool2 = false;
          bool1 = false;
          continue;
        }
        boolean bool3 = false;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        d();
        showInfoDialog(getText(2131165239));
        return;
      }
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.WriteTip;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = new TreeMap();
    paramb.put("business_id", c);
    if (i != null) {
      paramb.put("quicktip_id", i.getId());
    }
    return paramb;
  }
  
  public String getRequestIdForIri(b paramb)
  {
    return null;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 100) && (paramInt2 != -1)) {
      finish();
    }
    if ((paramInt1 == 101) && (paramInt2 == -1)) {
      g.a(paramIntent, this).execute(new Context[] { this });
    }
    if ((paramInt1 == 102) && (paramInt2 == -1)) {
      b();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!getAppData().m().c()) {
      startActivityForResult(ActivityLogin.a(this, 2131166033), 100);
    }
    setContentView(2130903121);
    findViewById(2131493245).setVisibility(4);
    b = ((EditText)findViewById(2131493322));
    b.setOnEditorActionListener(this);
    b.requestFocus();
    d = ((WebImageView)findViewById(2131493062));
    d.setOnClickListener(new h(this));
    registerForContextMenu(d);
    g = new ImageInputHelper(getAppData().h(), 101);
    d();
    Object localObject;
    if (paramBundle != null)
    {
      a = ((Bitmap)paramBundle.getParcelable("bitmap"));
      g.b(paramBundle);
      localObject = paramBundle.getString("key.bundle.text.state");
      h = paramBundle.getBoolean("photo_dirty");
    }
    for (paramBundle = (Bundle)localObject;; paramBundle = null)
    {
      if (a != null) {
        d.setImageBitmap(a);
      }
      k = WriteTip.TipAction.valueOf(getIntent().getAction());
      j = new r(this, null);
      localObject = (TextView)findViewById(2131493321);
      b.addTextChangedListener(new ce((TextView)localObject, getResources().getInteger(2131558435)));
      c = getIntent().getStringExtra("business_id");
      e = ((ToggleButton)findViewById(2131493318));
      f = ((ToggleButton)findViewById(2131493319));
      e.setOnCheckedChangeListener(new j(this));
      f.setOnCheckedChangeListener(new k(this));
      z.a(AppData.b().m().h(), getPreferences(0), null, f, e);
      switch (i.a[k.ordinal()])
      {
      default: 
        return;
      case 1: 
        i = new Tip.TempTip();
        b.setTag(c);
        if (paramBundle != null) {
          b.setText(paramBundle);
        }
        findViewById(2131493317).setVisibility(0);
        findViewById(2131493315).setVisibility(8);
        setTitle(2131166728);
        return;
      }
      i = ((Tip)getIntent().getExtras().getParcelable("tip"));
      if (paramBundle != null) {
        b.setText(paramBundle);
      }
      for (;;)
      {
        if (i.getPhoto() != null)
        {
          c();
          d.setImageUrl(i.getPhoto().getThumbnailUrl());
        }
        findViewById(2131493315).setVisibility(0);
        findViewById(2131493317).setVisibility(8);
        findViewById(2131493035).setOnClickListener(m);
        findViewById(2131493316).setOnClickListener(n);
        setTitle(2131166729);
        return;
        b.setText(i.getText());
      }
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    if (paramView.getId() == 2131493062)
    {
      getMenuInflater().inflate(2131755028, paramContextMenu);
      paramContextMenu.findItem(2131494154).setVisible(false);
      if (getAppData().h().a()) {
        break label97;
      }
      paramContextMenu.findItem(2131494153).setVisible(false);
    }
    for (;;)
    {
      paramContextMenu.findItem(2131493303).setOnMenuItemClickListener(new q(this));
      return;
      label97:
      paramContextMenu.findItem(2131494153).setOnMenuItemClickListener(new p(this));
    }
  }
  
  public Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt, paramBundle);
    case 300: 
      return a(paramBundle);
    }
    return b(paramBundle);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755019, paramMenu);
    paramMenu = paramMenu.findItem(2131494141);
    if (k == WriteTip.TipAction.NEW) {}
    for (int i1 = 2131166352;; i1 = 2131166791)
    {
      paramMenu.setTitle(i1);
      return true;
    }
  }
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 0) && (cp.a(paramKeyEvent)))
    {
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(paramTextView.getWindowToken(), 0);
      return true;
    }
    return false;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494141)
    {
      n.onClick(d);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    if (isFinishing())
    {
      removeDialog(300);
      if (l != null)
      {
        l.cancel(true);
        l = null;
      }
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("bitmap", a);
    paramBundle.putBoolean("photo_dirty", h);
    g.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.WriteTip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */