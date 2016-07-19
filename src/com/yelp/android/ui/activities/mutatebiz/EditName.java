package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.serializable.BusinessAttribute;
import com.yelp.android.serializable.BusinessAttributes;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class EditName
  extends YelpActivity
{
  private YelpBusiness a;
  private EditText b;
  private TextView c;
  private BusinessAttributes d;
  private LinearLayout e;
  private Map<String, EditText> f;
  private LinkedHashMap<String, String> g;
  private final TextWatcher h = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable) {}
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      updateOptionsMenu();
    }
  };
  
  public static final Intent a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString1, String paramString2, String paramString3, String paramString4, BusinessAttributes paramBusinessAttributes)
  {
    paramContext = new Intent(paramContext, EditName.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    paramContext.putExtra("extra.name", paramString1);
    paramContext.putExtra("extra.yomi_name", paramString2);
    paramContext.putExtra("extra.english_name", paramString3);
    paramContext.putExtra("extra.romaji_name", paramString4);
    paramContext.putExtra("extra.business_attributes", paramBusinessAttributes);
    return paramContext;
  }
  
  private void a()
  {
    Intent localIntent = new Intent(getIntent());
    localIntent.putExtra("extra.name", String.valueOf(b.getText()));
    if (f.containsKey("ja_primary")) {}
    for (String str1 = ((EditText)f.get("ja_romanized")).getText().toString();; str1 = "")
    {
      if (f.containsKey("en_primary")) {}
      for (String str2 = ((EditText)f.get("en_primary")).getText().toString();; str2 = "")
      {
        String str3 = "";
        if (f.containsKey("ja_romanized")) {
          str3 = ((EditText)f.get("ja_romanized")).getText().toString();
        }
        localIntent.putExtra("extra.yomi_name", str1);
        localIntent.putExtra("extra.english_name", str2);
        localIntent.putExtra("extra.romaji_name", str3);
        setResult(-1, localIntent);
        finish();
        return;
      }
    }
  }
  
  private boolean b()
  {
    boolean bool2 = false;
    if ((AppData.b().g().j()) || ((a != null) && (LocaleSettings.c(a.aw())))) {}
    for (int i = 1;; i = 0)
    {
      String str = "";
      if (f.containsKey("en_primary")) {
        str = ((EditText)f.get("en_primary")).getText().toString();
      }
      boolean bool1;
      if (TextUtils.isEmpty(b.getText()))
      {
        bool1 = bool2;
        if (i != 0)
        {
          bool1 = bool2;
          if (TextUtils.isEmpty(str)) {}
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
    setContentView(2130903094);
    f = new HashMap();
    g = new LinkedHashMap();
    g.put("ja_primary", "extra.yomi_name");
    g.put("en_primary", "extra.english_name");
    g.put("ja_romanized", "extra.romaji_name");
    e = ((LinearLayout)findViewById(2131689845));
    b = ((EditText)findViewById(2131689684));
    c = ((TextView)findViewById(2131689846));
    a = ((YelpBusiness)getIntent().getParcelableExtra("extra.business"));
    d = ((BusinessAttributes)getIntent().getParcelableExtra("extra.business_attributes"));
    b.setText(getIntent().getStringExtra("extra.name"));
    b.setHint(d.f().b());
    if (!TextUtils.isEmpty(d.f().a()))
    {
      c.setText(d.f().a());
      paramBundle = b;
      Iterator localIterator = g.entrySet().iterator();
      label224:
      if (!localIterator.hasNext()) {
        break label410;
      }
      Object localObject = (Map.Entry)localIterator.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = (String)((Map.Entry)localObject).getValue();
      if (!d.c().containsKey(str)) {
        break label477;
      }
      BusinessAttribute localBusinessAttribute = (BusinessAttribute)d.c().get(str);
      paramBundle = LayoutInflater.from(this).inflate(2130903357, e, true);
      TextView localTextView = (TextView)paramBundle.findViewById(2131690519);
      localTextView.setText(localBusinessAttribute.a());
      localTextView.setId(-1);
      paramBundle = (EditText)paramBundle.findViewById(2131690520);
      paramBundle.setHint(localBusinessAttribute.b());
      paramBundle.setText(getIntent().getStringExtra((String)localObject));
      paramBundle.setId(-1);
      f.put(str, paramBundle);
    }
    label410:
    label477:
    for (;;)
    {
      break label224;
      c.setVisibility(8);
      break;
      paramBundle.setOnEditorActionListener(new TextView.OnEditorActionListener()
      {
        public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if (paramAnonymousInt == 6)
          {
            EditName.a(EditName.this);
            return true;
          }
          return false;
        }
      });
      b.addTextChangedListener(h);
      if (f.containsKey("en_primary")) {
        ((EditText)f.get("en_primary")).addTextChangedListener(h);
      }
      b.requestFocus();
      return;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755021, paramMenu);
    paramMenu.findItem(2131691015).setEnabled(b());
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691015)
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