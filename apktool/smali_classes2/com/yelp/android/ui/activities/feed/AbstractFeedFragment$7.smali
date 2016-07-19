.class Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$7;
.super Landroid/content/BroadcastReceiver;
.source "AbstractFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 282
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 283
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/a;->a(Lcom/yelp/android/serializable/YelpBusiness;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    .line 286
    :cond_0
    return-void
.end method
