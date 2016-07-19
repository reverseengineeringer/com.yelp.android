.class public Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;
.super Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;
.source "CurrentUserFeedFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->f()V

    .line 42
    const-string/jumbo v0, "com.yelp.android.review.state.update"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$1;-><init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 100
    const-string/jumbo v0, "com.yelp.android.media.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$2;-><init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 113
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->f()V

    .line 32
    return-void
.end method
