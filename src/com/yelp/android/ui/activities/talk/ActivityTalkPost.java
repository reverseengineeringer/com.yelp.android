package com.yelp.android.ui.activities.talk;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
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
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fs;
import com.yelp.android.appdata.webrequests.ft;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.h;

public class ActivityTalkPost
  extends YelpActivity
  implements View.OnClickListener
{
  j<ft> a = new f(this);
  private EditText b;
  private EditText c;
  private TextView d;
  private String[] e;
  private YelpException f;
  private fs g;
  
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
    if ((g != null) && (g.is(AsyncTask.Status.RUNNING))) {
      g.cancel(true);
    }
    String str3 = PreferenceManager.getDefaultSharedPreferences(getApplicationContext()).getString(getString(2131165978), null);
    g = new fs(str1, str2, localCategories.getId(), str3, a);
    g.executeWithLocation(new Void[0]);
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
    setContentView(2130903104);
    e = getIntent().getStringArrayExtra("categories_list");
    b = ((EditText)findViewById(2131493253));
    c = ((EditText)findViewById(2131493254));
    d = ((TextView)findViewById(2131493255));
    d.setOnClickListener(new d(this));
    findViewById(2131493256).setOnClickListener(this);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    case 3: 
      return new AlertDialog.Builder(this).setTitle(getString(2131166667)).setMessage(f.getMessage(this)).setPositiveButton(getString(2131166237), null).create();
    case 1: 
      ArrayAdapter localArrayAdapter = new ArrayAdapter(this, 2130903426, e);
      return new AlertDialog.Builder(this).setTitle(2131165468).setAdapter(localArrayAdapter, new e(this)).create();
    }
    return new AlertDialog.Builder(this).setTitle(getString(2131165939)).setMessage(getString(2131166669)).setPositiveButton(getString(2131166237), null).create();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755019, paramMenu);
    paramMenu.findItem(2131494141).setTitle(2131166352);
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
 * Qualified Name:     com.yelp.android.ui.activities.talk.ActivityTalkPost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */