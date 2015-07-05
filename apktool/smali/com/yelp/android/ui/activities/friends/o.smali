.class Lcom/yelp/android/ui/activities/friends/o;
.super Ljava/lang/Object;
.source "FindFriendsSuggestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/o;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/o;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070358

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/o;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;

    const/16 v2, 0x413

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/o;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->a(Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;)Lcom/yelp/android/ui/activities/friends/p;

    move-result-object v0

    const-string/jumbo v1, "SOURCE_FACEBOOK"

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/friends/p;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/o;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->a(Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;)Lcom/yelp/android/ui/activities/friends/p;

    move-result-object v0

    const-string/jumbo v1, "SOURCE_CONTACTS"

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/friends/p;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c02bb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
