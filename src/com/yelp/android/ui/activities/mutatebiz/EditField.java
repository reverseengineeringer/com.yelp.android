package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;

public class EditField
  extends YelpActivity
  implements TextWatcher
{
  private TextView a;
  
  public static Intent a(Context paramContext, int paramInt1, CharSequence paramCharSequence, int paramInt2, EditField.InputType paramInputType)
  {
    paramContext = new Intent(paramContext, EditField.class);
    paramContext.putExtra("title", paramInt1);
    paramContext.putExtra("content", paramCharSequence);
    paramContext.putExtra("input_type", paramInputType.ordinal());
    paramContext.putExtra("instructions", paramInt2);
    return paramContext;
  }
  
  public static Intent a(Intent paramIntent, boolean paramBoolean)
  {
    return paramIntent.putExtra("empty_is_valid", paramBoolean);
  }
  
  public static CharSequence a(Intent paramIntent)
  {
    return paramIntent.getCharSequenceExtra("content");
  }
  
  public static String b(Intent paramIntent)
  {
    paramIntent = a(paramIntent);
    if (TextUtils.isEmpty(paramIntent)) {
      return null;
    }
    return String.valueOf(paramIntent);
  }
  
  private boolean d()
  {
    return (getIntent().getBooleanExtra("empty_is_valid", true)) || (!TextUtils.isEmpty(a.getText()));
  }
  
  protected void a()
  {
    TextView localTextView = (TextView)findViewById(2131493169);
    int i = getIntent().getIntExtra("instructions", 0);
    if (i != 0)
    {
      localTextView.setText(i);
      localTextView.setVisibility(0);
    }
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    updateOptionsMenu();
  }
  
  protected void b()
  {
    a = ((TextView)findViewById(2131493170));
    a.setText(getIntent().getCharSequenceExtra("content"));
    EditField.InputType localInputType = EditField.InputType.values()[getIntent().getIntExtra("input_type", 0)];
    if (localInputType != null) {
      localInputType.setup(a);
    }
    a.setOnEditorActionListener(new t(this));
    if (!getIntent().getBooleanExtra("empty_is_valid", true)) {
      a.addTextChangedListener(this);
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    updateOptionsMenu();
  }
  
  public void c()
  {
    if (!d()) {
      return;
    }
    Intent localIntent = getIntent();
    localIntent.putExtra("content", a.getText());
    setResult(-1, localIntent);
    finish();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessEditField;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    setTitle(getIntent().getIntExtra("title", 0));
    b();
    a();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755019, paramMenu);
    paramMenu = paramMenu.findItem(2131494141);
    int i = getIntent().getIntExtra("submit text", 0);
    if (i != 0) {
      paramMenu.setTitle(i);
    }
    paramMenu.setEnabled(d());
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494141)
    {
      c();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    updateOptionsMenu();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */