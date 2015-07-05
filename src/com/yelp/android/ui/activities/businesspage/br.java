package com.yelp.android.ui.activities.businesspage;

import android.content.Intent;
import java.util.ArrayList;

class br
  implements Runnable
{
  br(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void run()
  {
    Intent localIntent = (Intent)BusinessPageFragment.b(a).get(0);
    a.startActivityForResult(localIntent, 1008);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */