.class Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 105
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 106
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 108
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->c()Lcom/yelp/android/ui/activities/feed/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/a;->a(Lcom/yelp/android/serializable/Photo;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->c()Lcom/yelp/android/ui/activities/feed/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    .line 111
    return-void
.end method
