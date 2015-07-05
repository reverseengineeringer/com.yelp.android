package com.yelp.android.ui.activities.nearby;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.serializable.CheckIn;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.friendcheckins.p;
import com.yelp.android.ui.map.c;
import com.yelp.android.ui.map.e;
import com.yelp.android.ui.map.k;
import com.yelp.android.ui.util.au;
import java.util.ArrayList;
import java.util.Iterator;

public class ActivityComboNearbyCheckIns
  extends ComboMapListActivity<YelpCheckIn>
{
  private com.yelp.android.ui.activities.friendcheckins.a a;
  private ArrayList<YelpCheckIn> c;
  private p d;
  
  public static Intent a(Context paramContext, ArrayList<YelpCheckIn> paramArrayList, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityComboNearbyCheckIns.class);
    paramContext.putExtra("list_title", paramString);
    paramContext.putExtra("events", paramArrayList);
    return paramContext;
  }
  
  public e<YelpCheckIn> a()
  {
    return new c(this);
  }
  
  protected au<CheckIn> a(int paramInt)
  {
    return a;
  }
  
  public void a(YelpCheckIn paramYelpCheckIn)
  {
    startActivity(ActivityBusinessPage.b(this, paramYelpCheckIn.getBusiness()));
  }
  
  public void a(ComboListFragment<YelpCheckIn> paramComboListFragment)
  {
    paramComboListFragment.a(getIntent().getStringExtra("list_title"));
  }
  
  public void a(ComboListFragment<YelpCheckIn> paramComboListFragment, Object paramObject)
  {
    if ((paramObject instanceof YelpCheckIn)) {
      startActivity(ActivityBusinessPage.b(this, ((YelpCheckIn)paramObject).getBusiness()));
    }
  }
  
  public void b(YelpCheckIn paramYelpCheckIn) {}
  
  public void c()
  {
    j().a(c, new k(this, 0));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (!d.a(this, paramInt1, paramInt2, paramIntent)) {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c = getIntent().getParcelableArrayListExtra("events");
    paramBundle = new Intent("like");
    Object localObject = new Intent("comment");
    Intent localIntent = new Intent("view_like_comment");
    a = new com.yelp.android.ui.activities.friendcheckins.a(false, true);
    a.a(createPendingResult(103, paramBundle, 0));
    a.b(createPendingResult(102, (Intent)localObject, 0));
    a.c(createPendingResult(104, localIntent, 0));
    paramBundle = new ArrayList();
    localObject = c.iterator();
    while (((Iterator)localObject).hasNext()) {
      paramBundle.add((YelpCheckIn)((Iterator)localObject).next());
    }
    a.a(paramBundle);
    d = new a(this);
    l().a(true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ActivityComboNearbyCheckIns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */