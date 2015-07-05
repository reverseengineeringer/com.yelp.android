package com.yelp.android.ui.activities;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.ClipboardManager;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.n;
import com.yelp.android.services.push.d;
import com.yelp.android.ui.util.cp;
import java.util.ArrayList;
import java.util.Arrays;

@SuppressLint({"all"})
public class ActivityDebugInfo
  extends Activity
{
  private LinearLayout a;
  private Button b;
  private ArrayList<ArrayList<String>> c;
  private String d;
  
  private void a()
  {
    a = ((LinearLayout)findViewById(2131493162));
    b = ((Button)findViewById(2131493163));
    c = AppData.b().h().a(AppData.b().m());
    c.add(new ArrayList(Arrays.asList(new String[] { "DEVICE_ID", d.b().g() })));
    int i = 0;
    while (i < c.size())
    {
      ArrayList localArrayList = (ArrayList)c.get(i);
      TextView localTextView = new TextView(this);
      localTextView.setText((CharSequence)localArrayList.get(0));
      localTextView.setGravity(1);
      localTextView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
      localTextView.setTextAppearance(this, 2131689616);
      if (i == 0) {
        localTextView.setPadding(0, 0, 0, 0);
      }
      StringBuilder localStringBuilder;
      for (;;)
      {
        a.addView(localTextView);
        localTextView = new TextView(this);
        localTextView.setTextAppearance(this, 2131689712);
        localStringBuilder = new StringBuilder(1000);
        int j = 1;
        while (j < localArrayList.size())
        {
          localStringBuilder.append((String)localArrayList.get(j));
          localStringBuilder.append("\n");
          j += 1;
        }
        localTextView.setPadding(0, ao.i, 0, 0);
      }
      localTextView.setText(localStringBuilder.toString());
      a.addView(localTextView);
      i += 1;
    }
    b.setOnClickListener(new ce(this));
  }
  
  private void b()
  {
    if (d == null)
    {
      StringBuilder localStringBuilder = new StringBuilder(1000);
      int i = 0;
      while (i < c.size())
      {
        ArrayList localArrayList = (ArrayList)c.get(i);
        int j = 0;
        while (j < localArrayList.size())
        {
          localStringBuilder.append((String)localArrayList.get(j));
          localStringBuilder.append("\n");
          j += 1;
        }
        localStringBuilder.append("\n");
        i += 1;
      }
      d = localStringBuilder.toString();
    }
    ((ClipboardManager)getSystemService("clipboard")).setText(d);
    cp.a(this, "Stats Copied!", getResources().getString(2131165683));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903081);
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityDebugInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */