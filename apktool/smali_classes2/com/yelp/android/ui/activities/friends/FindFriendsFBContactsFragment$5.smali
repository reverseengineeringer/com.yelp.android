.class Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$5;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$5;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 469
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->InviteFriendsFacebook:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 470
    invoke-static {}, Lcom/facebook/share/widget/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$a;

    invoke-direct {v0}, Lcom/facebook/share/model/AppInviteContent$a;-><init>()V

    const-string/jumbo v1, "https://fb.me/10153467883913162"

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppInviteContent$a;->a(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/AppInviteContent$a;->a()Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$5;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/share/widget/a;->a(Landroid/app/Activity;Lcom/facebook/share/model/AppInviteContent;)V

    .line 490
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$5;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "We couldn\'t show the Facebook AppInviteDialog."

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$5;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$5;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->l(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->removeFooterView(Landroid/view/View;)Z

    .line 483
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$5;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070297

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070259

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
