package com.yelp.android.ui.dialogs;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.EventRsvp;
import java.util.ArrayList;
import java.util.List;

public class CompleteRsvpDialog
  extends DialogFragment
{
  private EventRsvp a;
  private boolean b;
  private ViewGroup c;
  private EditText d;
  private List<String> e;
  private ViewGroup f;
  
  public static CompleteRsvpDialog a(EventRsvp paramEventRsvp, boolean paramBoolean)
  {
    CompleteRsvpDialog localCompleteRsvpDialog = new CompleteRsvpDialog();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("args_event_rsvp", paramEventRsvp);
    localBundle.putBoolean("args_update_GUESTS", paramBoolean);
    localCompleteRsvpDialog.setArguments(localBundle);
    localCompleteRsvpDialog.setStyle(1, 2131689817);
    return localCompleteRsvpDialog;
  }
  
  private ArrayList<String> a(boolean paramBoolean)
  {
    if (c == null) {
      return new ArrayList();
    }
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < c.getChildCount())
    {
      EditText localEditText = (EditText)((ViewGroup)c.getChildAt(i)).getChildAt(1);
      if ((!TextUtils.isEmpty(localEditText.getText().toString())) || (paramBoolean)) {
        localArrayList.add(localEditText.getText().toString().trim());
      }
      i += 1;
    }
    return localArrayList;
  }
  
  private void a()
  {
    ((TextView)f.findViewById(2131493438)).setText(AppData.b().m().t());
  }
  
  private void b()
  {
    Object localObject1 = (TextView)f.findViewById(2131493439);
    if (a.getGuestsAllowed() == 0)
    {
      ((TextView)localObject1).setVisibility(8);
      return;
    }
    c = ((ViewGroup)f.findViewById(2131493440));
    Object localObject2 = a.getUserGuests();
    if (b) {}
    for (int i = ((List)localObject2).size();; i = a.getGuestsAllowed())
    {
      ((TextView)localObject1).setText(getResources().getQuantityString(2131623936, i, new Object[] { Integer.valueOf(i) }));
      int j = 0;
      while (j < i)
      {
        localObject1 = (ViewGroup)getActivity().getLayoutInflater().inflate(2130903176, c, false);
        ((TextView)((ViewGroup)localObject1).getChildAt(0)).setText(getString(2131165906, new Object[] { Integer.valueOf(j + 1) }));
        localObject2 = (TextView)((ViewGroup)localObject1).getChildAt(1);
        if (e.size() > 0) {
          ((TextView)localObject2).setText((CharSequence)e.get(j));
        }
        c.addView((View)localObject1);
        j += 1;
      }
      break;
    }
  }
  
  private void c()
  {
    if ((TextUtils.isEmpty(a.getFreeformQuestion())) || (b)) {
      return;
    }
    ((ViewStub)f.findViewById(2131493441)).inflate();
    ((TextView)f.findViewById(2131493442)).setText(a.getFreeformQuestion());
    d = ((EditText)f.findViewById(2131493443));
  }
  
  @SuppressLint({"InflateParams"})
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    a = ((EventRsvp)getArguments().getParcelable("args_event_rsvp"));
    b = getArguments().getBoolean("args_update_GUESTS");
    if (paramBundle != null)
    {
      e = paramBundle.getStringArrayList("saved_guest_names");
      f = ((ViewGroup)getActivity().getLayoutInflater().inflate(2130903177, null, false));
      paramBundle = new bl(getActivity());
      if (!b) {
        break label188;
      }
      i = 2131166794;
      label86:
      paramBundle.a(i);
      paramBundle.a(f);
      if (!b) {
        break label195;
      }
    }
    label188:
    label195:
    for (int i = 2131166793;; i = 2131166546)
    {
      paramBundle.a(i, new p(this));
      paramBundle.b(17039369, new q(this));
      a();
      b();
      c();
      return paramBundle.a();
      if (b)
      {
        e = a.getUserGuests();
        break;
      }
      e = new ArrayList();
      break;
      i = 2131165585;
      break label86;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putStringArrayList("saved_guest_names", a(true));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.CompleteRsvpDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */