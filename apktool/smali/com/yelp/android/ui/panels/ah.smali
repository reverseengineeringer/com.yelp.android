.class Lcom/yelp/android/ui/panels/ah;
.super Ljava/lang/Object;
.source "YourNextReviewAwaitsFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/at;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/yelp/android/ui/panels/ah;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ah;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/YelpListActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/YelpListActivity;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method public a(Lcom/yelp/android/ui/panels/ak;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public b(Lcom/yelp/android/ui/panels/ak;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ah;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/YelpListActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/YelpListActivity;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public c(Lcom/yelp/android/ui/panels/ak;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ah;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ah;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/ui/panels/ak;->getSuggestion()Lcom/yelp/android/serializable/ReviewSuggestion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ah;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ah;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    sget v1, Lcom/yelp/android/ui/util/cw;->c:I

    new-instance v2, Lcom/yelp/android/ui/panels/ai;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/panels/ai;-><init>(Lcom/yelp/android/ui/panels/ah;)V

    invoke-static {v0, v1, v3, v2}, Lcom/yelp/android/ui/util/cw;->a(Landroid/view/View;IZLcom/yelp/android/ui/util/dd;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    sget v0, Lcom/yelp/android/ui/util/cw;->c:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v3, v1}, Lcom/yelp/android/ui/util/cw;->a(Landroid/view/View;IZLcom/yelp/android/ui/util/dd;)V

    goto :goto_0
.end method
