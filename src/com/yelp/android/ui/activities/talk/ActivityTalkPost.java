package com.yelp.android.ui.activities.talk;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.en;
import com.yelp.android.appdata.webrequests.en.a;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.b;

public class ActivityTalkPost
  extends YelpActivity
  implements View.OnClickListener
{
  k.b<en.a> a = new k.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, en.a paramAnonymousa)
    {
      paramAnonymousApiRequest = new Intent();
      paramAnonymousApiRequest.putExtra("talk_topic", a);
      setResult(-1, paramAnonymousApiRequest);
      getHelper().h();
      finish();
    }
    
    public boolean a()
    {
      return false;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      getHelper().h();
      ActivityTalkPost.a(ActivityTalkPost.this, paramAnonymousYelpException);
      showDialog(3);
    }
  };
  private EditText b;
  private EditText c;
  private TextView d;
  private String[] e;
  private YelpException f;
  private en g;
  
  public static Intent a(Context paramContext, String[] paramArrayOfString)
  {
    paramContext = new Intent(paramContext, ActivityTalkPost.class);
    paramContext.putExtra("categories_list", paramArrayOfString);
    return paramContext;
  }
  
  private void a()
  {
    String str1 = b.getText().toString();
    String str2 = c.getText().toString();
    Categories localCategories = Categories.fromString(d.getText().toString());
    if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)) || (localCategories == null))
    {
      showDialog(2);
      return;
    }
    if ((g != null) && (g.a(AsyncTask.Status.RUNNING))) {
      g.a(true);
    }
    String str3 = PreferenceManager.getDefaultSharedPreferences(getApplicationContext()).getString(getString(2131166981), null);
    g = new en(str1, str2, localCategories.getId(), str3, a);
    g.a(new Void[0]);
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(c.getWindowToken(), 0);
    getHelper().a(g);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.TalkPost;
  }
  
  public void onClick(View paramView)
  {
    a();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903115);
    e = getIntent().getStringArrayExtra("categories_list");
    b = ((EditText)findViewById(2131689910));
    c = ((EditText)findViewById(2131689911));
    d = ((TextView)findViewById(2131689912));
    d.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        showDialog(1);
      }
    });
    findViewById(2131689913).setOnClickListener(this);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    case 3: 
      return new AlertDialog.Builder(this).setTitle(getString(2131166644)).setMessage(f.getMessage(this)).setPositiveButton(getString(2131166290), null).create();
    case 1: 
      ArrayAdapter localArrayAdapter = new ArrayAdapter(this, 2130903549, e);
      new AlertDialog.Builder(this).setTitle(2131165603).setAdapter(localArrayAdapter, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ActivityTalkPost.b(ActivityTalkPost.this).setText(ActivityTalkPost.a(ActivityTalkPost.this)[paramAnonymousInt]);
        }
      }).create();
    }
    return new AlertDialog.Builder(this).setTitle(getString(2131166006)).setMessage(getString(2131166646)).setPositiveButton(getString(2131166290), null).create();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755021, paramMenu);
    paramMenu.findItem(2131691015).setTitle(2131166375);
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
 * Qualified Name:     com.yelp.android.ui.activities.talk.ActivityTalkPost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */