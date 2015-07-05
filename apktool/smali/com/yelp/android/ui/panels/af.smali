.class Lcom/yelp/android/ui/panels/af;
.super Ljava/lang/Object;
.source "YourNextReviewAwaitsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/yelp/android/ui/panels/af;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/af;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/yelp/android/ui/panels/af;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/panels/af;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/af;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/panels/af;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 85
    const/4 v0, 0x0

    move v1, v0

    .line 86
    :goto_0
    add-int v0, v1, v2

    iget-object v3, p0, Lcom/yelp/android/ui/panels/af;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    const/4 v0, 0x3

    if-ge v1, v0, :cond_0

    .line 87
    iget-object v3, p0, Lcom/yelp/android/ui/panels/af;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/panels/af;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewSuggestion;

    iget-object v4, p0, Lcom/yelp/android/ui/panels/af;->a:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-static {v3, v0, v4, v5}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;Lcom/yelp/android/serializable/ReviewSuggestion;Landroid/view/ViewGroup;Z)V

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/af;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/af;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/panels/af;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewSuggestionLoadedMore:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 95
    :cond_2
    return-void
.end method
