package com.yelp.android.ui.activities.profile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.du;
import com.yelp.android.appdata.webrequests.fe;
import com.yelp.android.serializable.ReviewBroadcast;
import com.yelp.android.serializable.ReviewDraft;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.reviews.ActivityReviewSuggestions;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.dialogs.TwoButtonDialog;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.t;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.List;

public class ActivityUserDraftList
  extends YelpListActivity
{
  private c a;
  private fe b;
  private du c;
  private ReviewDraft d;
  private final DialogInterface.OnClickListener e = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      paramAnonymousDialogInterface = new ArrayList();
      paramAnonymousDialogInterface.add(ActivityUserDraftList.c(ActivityUserDraftList.this).g());
      ActivityUserDraftList.a(ActivityUserDraftList.this, new du(paramAnonymousDialogInterface, ActivityUserDraftList.d(ActivityUserDraftList.this)));
      showLoadingDialog();
      ActivityUserDraftList.e(ActivityUserDraftList.this).f(new Void[0]);
    }
  };
  private final c.a f = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      ActivityUserDraftList.a(ActivityUserDraftList.this).c(ActivityUserDraftList.c(ActivityUserDraftList.this));
      ActivityUserDraftList.a(ActivityUserDraftList.this).notifyDataSetChanged();
      if (ActivityUserDraftList.a(ActivityUserDraftList.this).isEmpty()) {
        ActivityUserDraftList.f(ActivityUserDraftList.this);
      }
      ActivityUserDraftList.a(ActivityUserDraftList.this, null);
      AppData.a(EventIri.ReviewDraftDelete, "source", "draft_list");
      AppData.b().q().p().m();
      hideLoadingDialog();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      as.a(2131165770, 0);
    }
  };
  private final ApiRequest.b<List<ReviewDraft>> g = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, List<ReviewDraft> paramAnonymousList)
    {
      a(paramAnonymousList);
      disableLoading();
      if ((paramAnonymousList.size() < s_()) || (paramAnonymousList.size() == 0))
      {
        if (ActivityUserDraftList.a(ActivityUserDraftList.this).isEmpty()) {
          ActivityUserDraftList.f(ActivityUserDraftList.this);
        }
        a();
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      if (ActivityUserDraftList.a(ActivityUserDraftList.this).isEmpty()) {
        populateError(paramAnonymousYelpException);
      }
    }
  };
  private final PanelError.a h = new PanelError.a()
  {
    public void q_()
    {
      startActivity(ActivityReviewSuggestions.a(ActivityUserDraftList.this));
    }
  };
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityUserDraftList.class);
  }
  
  private void b()
  {
    populateError(ErrorType.NO_DRAFTS, h);
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    startActivity(ActivityReviewWrite.a(this, ((ReviewDraft)paramListView.getItemAtPosition(paramInt)).g(), ReviewState.DRAFTED, ReviewSource.ProfileReviewDrafts));
  }
  
  public void a(List<ReviewDraft> paramList)
  {
    a.a(paramList);
    c(a.getCount());
    a.notifyDataSetChanged();
  }
  
  protected void c()
  {
    if ((b == null) || (!b.u()))
    {
      b = new fe(g, s_(), s());
      b.f(new Void[0]);
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfileDrafts;
  }
  
  public int h()
  {
    return 2131166195;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = new c(t.a(this));
    if (paramBundle != null)
    {
      a(paramBundle.getParcelableArrayList("draft_list"));
      d = ((ReviewDraft)paramBundle.getParcelable("draft_to_delete"));
    }
    r().setAdapter(a);
    setTitle(2131166194);
    registerForContextMenu(r());
    registerDirtyEventReceiver("com.yelp.android.review.state.update", new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        paramAnonymousContext = (ReviewBroadcast)ObjectDirtyEvent.a(paramAnonymousIntent);
        if (paramAnonymousContext.e() == ReviewState.DRAFTED)
        {
          paramAnonymousIntent = ActivityUserDraftList.a(ActivityUserDraftList.this).a(paramAnonymousContext.c());
          if (paramAnonymousIntent != null)
          {
            paramAnonymousIntent.a(paramAnonymousContext.a() * 2);
            paramAnonymousIntent.a(paramAnonymousContext.b());
            ActivityUserDraftList.a(ActivityUserDraftList.this).notifyDataSetChanged();
          }
        }
      }
    });
    paramBundle = (TwoButtonDialog)getSupportFragmentManager().a("delete_draft_confirmation");
    if (paramBundle != null) {
      paramBundle.a(e);
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, final View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    paramView = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    paramView = (ReviewDraft)r().getItemAtPosition(position);
    paramContextMenu.setHeaderTitle(paramView.f());
    paramContextMenu.add(2131166211).setIntent(ActivityBusinessPage.b(this, paramView.g()));
    paramContextMenu.add(2131165908).setIntent(ActivityReviewWrite.a(this, paramView.g(), ReviewState.DRAFTED, ReviewSource.ProfileReviewDrafts));
    paramContextMenu.add(getString(2131165763)).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener()
    {
      public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
      {
        paramAnonymousMenuItem = TwoButtonDialog.a(2131165763, 2131165764, 2131166033, 2131165760);
        paramAnonymousMenuItem.a(ActivityUserDraftList.b(ActivityUserDraftList.this));
        paramAnonymousMenuItem.show(getSupportFragmentManager(), "delete_draft_confirmation");
        ActivityUserDraftList.a(ActivityUserDraftList.this, paramView);
        return true;
      }
    });
  }
  
  public void onPause()
  {
    super.onPause();
    freezeRequest("drafts", b);
    freezeRequest("delete_drafts", c);
  }
  
  public void onResume()
  {
    super.onResume();
    thawRequest("drafts", b, g);
    thawRequest("delete_drafts", c, f);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("draft_list", a.b());
    if (d != null) {
      paramBundle.putParcelable("draft_to_delete", d);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserDraftList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */