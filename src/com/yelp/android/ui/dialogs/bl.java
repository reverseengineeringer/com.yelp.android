package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.yelp.android.bf.f;
import com.yelp.android.bf.g;
import com.yelp.android.bf.i;

public class bl
{
  private AlertDialog.Builder a;
  private ViewGroup b;
  private TextView c;
  private Button d;
  private Button e;
  private View f;
  private View g;
  private View h;
  private View i;
  private TextView j;
  private View k;
  private Dialog l;
  
  public bl(Context paramContext)
  {
    a = new AlertDialog.Builder(paramContext);
    paramContext = LayoutInflater.from(paramContext).inflate(i.yelp_dialog, null);
    b = ((ViewGroup)paramContext.findViewById(g.content));
    c = ((TextView)paramContext.findViewById(g.title));
    d = ((Button)paramContext.findViewById(g.positive));
    e = ((Button)paramContext.findViewById(g.negative));
    f = paramContext.findViewById(g.button_top_border);
    g = paramContext.findViewById(g.button_divider);
    h = paramContext.findViewById(g.buttons);
    j = ((TextView)paramContext.findViewById(g.message));
    k = paramContext.findViewById(g.message_scroll);
    i = paramContext.findViewById(g.divider);
    a.setView(paramContext);
  }
  
  private void a(Button paramButton, int paramInt1, int paramInt2, View.OnClickListener paramOnClickListener)
  {
    paramOnClickListener = new bm(this, paramOnClickListener);
    f.setVisibility(0);
    h.setVisibility(0);
    paramButton.setText(paramInt1);
    paramButton.setOnClickListener(paramOnClickListener);
    paramButton.setBackgroundResource(paramInt2);
    paramButton.setVisibility(0);
    if ((e.getVisibility() == 0) && (d.getVisibility() == 0)) {
      g.setVisibility(0);
    }
  }
  
  public Dialog a()
  {
    l = a.create();
    return l;
  }
  
  public void a(int paramInt)
  {
    a(a.getContext().getResources().getString(paramInt));
  }
  
  public void a(int paramInt, View.OnClickListener paramOnClickListener)
  {
    a(d, paramInt, f.yelp_dialog_button, paramOnClickListener);
  }
  
  public void a(View paramView)
  {
    b.addView(paramView);
    b.setVisibility(0);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    c.setText(paramCharSequence);
    c.setVisibility(0);
    i.setVisibility(0);
  }
  
  public void b(int paramInt, View.OnClickListener paramOnClickListener)
  {
    a(e, paramInt, f.yelp_dialog_button, paramOnClickListener);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */