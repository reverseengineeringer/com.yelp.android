.class Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;
.super Ljava/lang/Object;
.source "YourNextReviewAwaitsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 90
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->PostReviewYNRA:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v3

    .line 92
    new-instance v4, Lcom/yelp/android/g/a;

    invoke-direct {v4}, Lcom/yelp/android/g/a;-><init>()V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 94
    const/4 v0, 0x0

    move v2, v0

    .line 96
    :goto_0
    add-int v0, v2, v5

    iget-object v1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    if-ge v2, v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int v1, v2, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewSuggestion;

    .line 100
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewSuggestion;->c()Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    iget-object v6, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->a:Landroid/widget/LinearLayout;

    invoke-static {v1, v0, v6, v7}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;Lcom/yelp/android/serializable/ReviewSuggestion;Landroid/view/ViewGroup;Z)V

    .line 97
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->c:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    :cond_2
    const-string/jumbo v0, "suggestion_type_counts"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewSuggestionsViewed:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 116
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewSuggestionLoadedMore:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 118
    :cond_3
    return-void
.end method
