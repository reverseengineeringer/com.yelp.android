.class Lcom/yelp/android/ui/activities/feed/am;
.super Landroid/content/BroadcastReceiver;
.source "FeedFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/am;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 490
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 491
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/am;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;)V

    .line 492
    return-void
.end method
