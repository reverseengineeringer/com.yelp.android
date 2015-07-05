.class Lcom/yelp/android/ui/activities/feed/ai;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ai;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ai;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/ai;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yelp/android/ui/activities/notifications/ActivityNotifications;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 388
    return-void
.end method
