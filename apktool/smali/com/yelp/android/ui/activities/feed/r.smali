.class Lcom/yelp/android/ui/activities/feed/r;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/r;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 357
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 358
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/r;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;)V

    .line 359
    return-void
.end method
