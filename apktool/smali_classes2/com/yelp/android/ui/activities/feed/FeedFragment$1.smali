.class Lcom/yelp/android/ui/activities/feed/FeedFragment$1;
.super Landroid/support/v4/widget/SwipeRefreshLayout;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/FeedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$1;->c:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$1;->c:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
