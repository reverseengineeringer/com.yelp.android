package com.yelp.android.ui.activities.deals;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.ui.util.w;
import com.yelp.android.util.ContactsFetcher.Contact;
import java.lang.ref.WeakReference;

public class AddGiftRecipient$a
  extends w<ContactsFetcher.Contact>
  implements Filterable
{
  private final WeakReference<Activity> a;
  
  public AddGiftRecipient$a(Activity paramActivity)
  {
    a = new WeakReference(paramActivity);
  }
  
  public Filter getFilter()
  {
    return new AddGiftRecipient.b((Activity)a.get(), this);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(localContext).inflate(2130903383, paramViewGroup, false);
      paramView = (TextView)localView.findViewById(2131690328);
      localView.setTag(Pair.create((ImageView)localView.findViewById(2131689637), paramView));
    }
    paramView = (ContactsFetcher.Contact)getItem(paramInt);
    paramViewGroup = (Pair)localView.getTag();
    if (paramViewGroup != null)
    {
      Bitmap localBitmap = paramView.e(localContext);
      if (localBitmap == null) {
        break label123;
      }
      ((ImageView)first).setImageBitmap(localBitmap);
    }
    for (;;)
    {
      ((TextView)second).setText(paramView.a(localContext));
      return localView;
      label123:
      ((ImageView)first).setImageResource(2130837703);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.AddGiftRecipient.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */