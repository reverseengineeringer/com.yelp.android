.class Lcom/yelp/android/ui/activities/feed/ag;
.super Landroid/support/v7/widget/bt;
.source "FeedFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ag;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/bt;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 758
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ag;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    if-nez p2, :cond_0

    .line 761
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ag;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    goto :goto_0
.end method
