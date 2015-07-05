package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;

public class EditName
  extends YelpActivity
{
  private YelpBusiness a;
  private EditText b;
  private EditText c;
  private EditText d;
  private EditText e;
  private TextView f;
  private TextView g;
  private TextView h;
  private TextView i;
  private String j;
  private final TextWatcher k = new v(this);
  
  public static final Intent a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    paramContext = a(paramContext, paramString5);
    paramContext.putExtra("business", paramYelpBusiness);
    paramContext.putExtra("name", paramString1);
    paramContext.putExtra("yomi_name", paramString2);
    paramContext.putExtra("english_name", paramString3);
    paramContext.putExtra("romaji_name", paramString4);
    return paramContext;
  }
  
  public static final Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, EditName.class);
    paramContext.putExtra("business_country", paramString);
    return paramContext;
  }
  
  private void a()
  {
    Intent localIntent = new Intent(getIntent());
    localIntent.putExtra("name", String.valueOf(b.getText()));
    localIntent.putExtra("yomi_name", String.valueOf(c.getText()));
    localIntent.putExtra("english_name", String.valueOf(d.getText()));
    localIntent.putExtra("romaji_name", String.valueOf(e.getText()));
    setResult(-1, localIntent);
    finish();
  }
  
  private boolean b()
  {
    boolean bool2 = false;
    if ((AppData.b().g().j()) || ((a != null) && (LocaleSettings.c(a.getCountry())))) {}
    for (int m = 1;; m = 0)
    {
      boolean bool1;
      if (TextUtils.isEmpty(b.getText()))
      {
        bool1 = bool2;
        if (m != 0)
        {
          bool1 = bool2;
          if (TextUtils.isEmpty(d.getText().toString())) {}
        }
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessEditField;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903084);
    b = ((EditText)findViewById(2131493020));
    c = ((EditText)findViewById(2131493173));
    d = ((EditText)findViewById(2131493175));
    e = ((EditText)findViewById(2131493177));
    f = ((TextView)findViewById(2131493172));
    g = ((TextView)findViewById(2131493176));
    h = ((TextView)findViewById(2131493171));
    i = ((TextView)findViewById(2131493174));
    a = ((YelpBusiness)getIntent().getParcelableExtra("business"));
    LocaleSettings localLocaleSettings;
    label238:
    EditText localEditText;
    if (getIntent().getStringExtra("business_country") != null)
    {
      paramBundle = getIntent().getStringExtra("business_country");
      j = paramBundle;
      b.setText(getIntent().getStringExtra("name"));
      c.setText(getIntent().getStringExtra("yomi_name"));
      d.setText(getIntent().getStringExtra("english_name"));
      e.setText(getIntent().getStringExtra("romaji_name"));
      localLocaleSettings = AppData.b().g();
      if (a != null) {
        break label303;
      }
      paramBundle = null;
      localEditText = b;
      if ((!localLocaleSettings.i()) && (!LocaleSettings.a(paramBundle))) {
        break label314;
      }
      paramBundle = e;
    }
    for (;;)
    {
      paramBundle.setOnEditorActionListener(new u(this));
      b.addTextChangedListener(k);
      d.addTextChangedListener(k);
      return;
      paramBundle = "";
      break;
      label303:
      paramBundle = a.getCountry();
      break label238;
      label314:
      if (((a == null) && (localLocaleSettings.j())) || (LocaleSettings.c(paramBundle)) || (LocaleSettings.c(j)))
      {
        f.setVisibility(8);
        g.setVisibility(8);
        c.setVisibility(8);
        e.setVisibility(8);
        h.setText(2131165436);
        i.setText(2131165437);
        b.setHint(2131165928);
        d.setHint(2131165927);
        paramBundle = d;
      }
      else
      {
        h.setVisibility(8);
        f.setVisibility(8);
        i.setVisibility(8);
        g.setVisibility(8);
        c.setVisibility(8);
        d.setVisibility(8);
        e.setVisibility(8);
        paramBundle = localEditText;
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755019, paramMenu);
    paramMenu = paramMenu.findItem(2131494141);
    paramMenu.setTitle(2131166183);
    paramMenu.setEnabled(b());
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494141)
    {
      a();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditName
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */