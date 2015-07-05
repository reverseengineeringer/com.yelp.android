.class Lcom/yelp/android/ui/activities/feed/q;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/q;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 345
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 346
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 347
    sget-object v2, Lcom/yelp/android/serializable/TipFeedEntry;->CONTENT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 348
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/q;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 349
    return-void
.end method
