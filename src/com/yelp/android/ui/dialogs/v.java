package com.yelp.android.ui.dialogs;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.ClipboardManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cr;

public class v
  extends Dialog
{
  private String a;
  private String b;
  private String c;
  private TextView d;
  
  public v(Context paramContext, String paramString1, String paramString2, Exception paramException, boolean paramBoolean)
  {
    super(paramContext);
    a = paramString1;
    b = paramString2;
    if (paramException != null)
    {
      c = cp.a(paramException);
      b += c;
    }
    if (paramBoolean)
    {
      b += "\n\n===================\n\n";
      paramString1 = new StringBuilder(2000);
      cp.a(paramContext, paramString1);
      b += paramString1.toString();
    }
  }
  
  private void a()
  {
    ((ClipboardManager)getContext().getSystemService("clipboard")).setText(b);
    cr.a("Text copied to clipboard!", 0);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903088);
    setTitle(a);
    cp.a((LinearLayout)findViewById(2131493186));
    d = ((TextView)findViewById(2131493187));
    d.setText(b);
    ((Button)findViewById(2131493188)).setOnClickListener(new w(this));
    ((Button)findViewById(2131493189)).setOnClickListener(new x(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */