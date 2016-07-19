.class Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$1;
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
    .line 44
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 47
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    .line 48
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->e()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    .line 50
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_1

    .line 56
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/a;->e(Ljava/lang/String;)Lcom/yelp/android/serializable/ReviewDraft;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/ReviewDraft;->a(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewDraft;->a(I)V

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_2

    .line 76
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/a;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(I)V

    .line 85
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 88
    :cond_2
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/a;->b(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->c()Lcom/yelp/android/ui/activities/feed/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    goto :goto_0
.end method
