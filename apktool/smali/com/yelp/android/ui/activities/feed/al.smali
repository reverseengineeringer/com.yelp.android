.class Lcom/yelp/android/ui/activities/feed/al;
.super Landroid/content/BroadcastReceiver;
.source "FeedFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/al;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 478
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 479
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 480
    sget-object v2, Lcom/yelp/android/serializable/TipFeedEntry;->CONTENT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 481
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/al;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 482
    return-void
.end method
