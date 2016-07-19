package com.yelp.android.ui.activities.tips;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.ToggleButton;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bd;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.Tip.TempTip;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.services.job.TipEditJob;
import com.yelp.android.services.job.TipNewJob;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.ActivityRetryTipShare;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.ImageInputHelper.c;
import com.yelp.android.ui.util.al;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.p;
import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class WriteTip
  extends YelpActivity
  implements TextView.OnEditorActionListener, ImageInputHelper.c
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
  private a j;
  private TipAction k;
  private ApiRequest<Void, ?, ?> l;
  private String m;
  private final View.OnClickListener n = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if ((WriteTip.d(WriteTip.this) != null) && (WriteTip.d(WriteTip.this).u())) {
        return;
      }
      showDialog(301);
    }
  };
  private final View.OnClickListener o = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = WriteTip.this;
      AppData.a(EventIri.TipSave, "source", WriteTip.f(WriteTip.this));
      if ((WriteTip.d(WriteTip.this) != null) && (WriteTip.d(WriteTip.this).u())) {
        return;
      }
      int i = getResources().getInteger(2131492907);
      Object localObject;
      if (TextUtils.isEmpty(String.valueOf(WriteTip.e(WriteTip.this).getText()).trim()))
      {
        localObject = new Bundle();
        if (paramAnonymousView.a()) {}
        for (i = 2131166344;; i = 2131166264)
        {
          ((Bundle)localObject).putString("bundle message for dialogs", paramAnonymousView.getString(i));
          showDialog(300, (Bundle)localObject);
          return;
        }
      }
      if (WriteTip.e(WriteTip.this).getText().length() > i)
      {
        localObject = new Bundle();
        ((Bundle)localObject).putString("bundle message for dialogs", paramAnonymousView.getString(2131166703, new Object[] { Integer.valueOf(i) }));
        showDialog(300, (Bundle)localObject);
        return;
      }
      switch (WriteTip.2.a[WriteTip.g(WriteTip.this).ordinal()])
      {
      default: 
        return;
      case 1: 
        localObject = p.a(null, WriteTip.h(paramAnonymousView), WriteTip.i(paramAnonymousView));
        localObject = p.a(paramAnonymousView, AppData.b().q().p(), (List)localObject, ActivityRetryTipShare.class);
        if (localObject != null)
        {
          startActivityForResult((Intent)localObject, 102);
          return;
        }
        break;
      case 2: 
        paramAnonymousView.b();
        return;
      }
      paramAnonymousView.b();
    }
  };
  
  public static Intent a(Context paramContext, Tip paramTip, String paramString)
  {
    paramContext = new Intent(paramContext, WriteTip.class);
    paramContext.setAction(TipAction.EDIT.name());
    paramContext.putExtra("tip", paramTip);
    paramContext.putExtra("extra.business_id", paramString);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return a(paramContext, paramYelpBusiness.aD());
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, WriteTip.class);
    paramContext.setAction(TipAction.NEW.name());
    paramContext.putExtra("extra.business_id", paramString);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = a(paramContext, paramString1);
    paramContext.putExtra("extra.tip_source", paramString2);
    return paramContext;
  }
  
  private void c()
  {
    findViewById(2131689903).setVisibility(0);
  }
  
  private void d()
  {
    d.setImageResource(2130838901);
    g.a();
  }
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = paramBundle.getString("bundle message for dialogs");
    new AlertDialog.Builder(this).setIcon(0).setCancelable(false).setTitle(2131165438).setMessage(paramBundle).setPositiveButton(2131165776, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        removeDialog(300);
      }
    }).create();
  }
  
  public void a(File paramFile)
  {
    hideLoadingDialog();
    showInfoDialog(2131165464, 2131165858);
  }
  
  protected boolean a()
  {
    if ((i != null) && (i.r() != null)) {}
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
    new AlertDialog.Builder(this).setMessage(2131166690).setTitle(2131166692).setNegativeButton(17039360, null).setPositiveButton(2131166692, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        showLoadingDialog(2131166693);
        WriteTip.a(WriteTip.this, new bd(WriteTip.b(WriteTip.this).a(), WriteTip.c(WriteTip.this)));
        WriteTip.d(WriteTip.this).f(new Void[0]);
      }
    }).create();
  }
  
  public void b()
  {
    Object localObject = g.e();
    if (g.d() == ImageInputHelper.ImageSource.CAMERA) {}
    String str1;
    Photo localPhoto;
    String str2;
    for (boolean bool = true;; bool = false)
    {
      if (!h) {
        localObject = null;
      }
      str1 = i.e();
      localPhoto = i.r();
      str2 = b.getText().toString();
      i.a(str2);
      if (h) {
        i.a(a);
      }
      if ((localObject == null) || (((File)localObject).exists())) {
        break;
      }
      d();
      showInfoDialog(getText(2131165375));
      return;
    }
    if (k == TipAction.NEW)
    {
      TipNewJob.launchJob(c, i.i(), str2, (File)localObject, f.isChecked(), e.isChecked(), bool);
      setResult(-1);
      new ObjectDirtyEvent(i, "com.yelp.android.tips.add").a(this);
    }
    for (;;)
    {
      finish();
      return;
      TipEditJob.launchJob(i.a(), str2, (File)localObject, bool, str1, localPhoto);
      localObject = getIntent();
      ((Intent)localObject).putExtra("tip_updated", i);
      setResult(-1, (Intent)localObject);
      new ObjectDirtyEvent(i, "com.yelp.android.tips.update").a(this);
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.WriteTip;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    parama = new TreeMap();
    parama.put("business_id", c);
    if (i != null) {
      parama.put("quicktip_id", i.a());
    }
    return parama;
  }
  
  public String getRequestIdForIri(a parama)
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
    if (!getAppData().q().b()) {
      startActivityForResult(ActivityLogin.a(this, 2131166093), 100);
    }
    m = getIntent().getStringExtra("extra.tip_source");
    setContentView(2130903130);
    findViewById(2131689903).setVisibility(4);
    b = ((EditText)findViewById(2131689978));
    b.setOnEditorActionListener(this);
    b.requestFocus();
    d = ((WebImageView)findViewById(2131689747));
    d.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        openContextMenu(WriteTip.a(WriteTip.this));
      }
    });
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
      k = TipAction.valueOf(getIntent().getAction());
      j = new a(null);
      localObject = (TextView)findViewById(2131689977);
      b.addTextChangedListener(new al((TextView)localObject, getResources().getInteger(2131492907)));
      c = getIntent().getStringExtra("extra.business_id");
      e = ((ToggleButton)findViewById(2131689974));
      f = ((ToggleButton)findViewById(2131689975));
      e.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          p.a(WriteTip.this, ShareRequest.ShareType.TWITTER, paramAnonymousBoolean);
        }
      });
      f.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          p.a(WriteTip.this, ShareRequest.ShareType.FACEBOOK, paramAnonymousBoolean);
        }
      });
      p.a(this, AppData.b().q().p(), true, null, f, e);
      switch (2.a[k.ordinal()])
      {
      default: 
        return;
      case 1: 
        i = new Tip.TempTip();
        b.setTag(c);
        if (paramBundle != null) {
          b.setText(paramBundle);
        }
        findViewById(2131689973).setVisibility(0);
        findViewById(2131689971).setVisibility(8);
        setTitle(2131166706);
        return;
      }
      i = ((Tip)getIntent().getExtras().getParcelable("tip"));
      if (paramBundle != null) {
        b.setText(paramBundle);
      }
      for (;;)
      {
        if (i.r() != null)
        {
          c();
          d.setImageUrl(i.r().f());
        }
        findViewById(2131689971).setVisibility(0);
        findViewById(2131689973).setVisibility(8);
        findViewById(2131689698).setOnClickListener(n);
        findViewById(2131689972).setOnClickListener(o);
        setTitle(2131166707);
        return;
        b.setText(i.e());
      }
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    if (paramView.getId() == 2131689747)
    {
      getMenuInflater().inflate(2131755032, paramContextMenu);
      paramContextMenu.findItem(2131691027).setVisible(false);
      if (getAppData().h().a()) {
        break label97;
      }
      paramContextMenu.findItem(2131691026).setVisible(false);
    }
    for (;;)
    {
      paramContextMenu.findItem(2131689959).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener()
      {
        public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
        {
          WriteTip.j(WriteTip.this).a(WriteTip.this, ImageInputHelper.ImageSource.GALLERY);
          return true;
        }
      });
      return;
      label97:
      paramContextMenu.findItem(2131691026).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener()
      {
        public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
        {
          if (k.a(WriteTip.this, PermissionGroup.CAMERA))
          {
            WriteTip.j(WriteTip.this).a(WriteTip.this, ImageInputHelper.ImageSource.CAMERA);
            return true;
          }
          k.a(WriteTip.this, 250, new PermissionGroup[] { PermissionGroup.CAMERA });
          return true;
        }
      });
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
    getMenuInflater().inflate(2131755021, paramMenu);
    paramMenu = paramMenu.findItem(2131691015);
    if (k == TipAction.NEW) {}
    for (int i1 = 2131166375;; i1 = 2131166755)
    {
      paramMenu.setTitle(i1);
      return true;
    }
  }
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 0) && (ar.a(paramKeyEvent)))
    {
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(paramTextView.getWindowToken(), 0);
      return true;
    }
    return false;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691015)
    {
      o.onClick(d);
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
        l.a(true);
        l = null;
      }
    }
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (250 == paramInt)
    {
      paramArrayOfString = k.a(paramArrayOfString, paramArrayOfInt);
      if ((paramArrayOfString.containsKey(PermissionGroup.CAMERA)) && (!((Boolean)paramArrayOfString.get(PermissionGroup.CAMERA)).booleanValue())) {
        as.a(2131166342, 1);
      }
      while ((!paramArrayOfString.containsKey(PermissionGroup.CAMERA)) || (!((Boolean)paramArrayOfString.get(PermissionGroup.CAMERA)).booleanValue())) {
        return;
      }
      g.a(this, ImageInputHelper.ImageSource.CAMERA);
      return;
    }
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("bitmap", a);
    paramBundle.putBoolean("photo_dirty", h);
    g.a(paramBundle);
  }
  
  private static enum TipAction
  {
    EDIT,  NEW;
    
    private TipAction() {}
  }
  
  private class a
    implements c.a
  {
    private a() {}
    
    private void a(int paramInt)
    {
      hideLoadingDialog();
      as.a(paramInt, 0);
      finish();
    }
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
    {
      paramApiRequest = getIntent();
      paramApiRequest.putExtra("tip_deleted", true);
      setResult(-1, paramApiRequest);
      a(2131166691);
      new ObjectDirtyEvent(WriteTip.b(WriteTip.this), "com.yelp.android.tips.delete").a(WriteTip.this);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
    {
      hideLoadingDialog();
      WriteTip.e(WriteTip.this).setEnabled(true);
      paramApiRequest = new Bundle();
      paramApiRequest.putString("bundle message for dialogs", paramYelpException.getMessage(WriteTip.this));
      showDialog(300, paramApiRequest);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.WriteTip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */