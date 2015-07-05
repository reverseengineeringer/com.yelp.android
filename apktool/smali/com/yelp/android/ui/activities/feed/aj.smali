.class Lcom/yelp/android/ui/activities/feed/aj;
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
    .line 391
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/aj;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aj;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/aj;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 395
    return-void
.end method
