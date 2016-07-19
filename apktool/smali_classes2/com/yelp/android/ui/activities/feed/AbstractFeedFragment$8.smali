.class Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$8;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "AbstractFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;
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
    .line 316
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$8;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$8;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    if-nez p2, :cond_0

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$8;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    goto :goto_0
.end method
