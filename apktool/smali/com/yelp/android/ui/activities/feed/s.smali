.class Lcom/yelp/android/ui/activities/feed/s;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/s;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 367
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 368
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 370
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 371
    sget-object v2, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->PHOTO_REMOVED:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 372
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/s;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->f()Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 375
    :cond_0
    return-void
.end method
