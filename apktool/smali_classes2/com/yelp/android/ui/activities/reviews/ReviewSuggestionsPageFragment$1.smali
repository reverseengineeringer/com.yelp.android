.class Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$1;
.super Ljava/lang/Object;
.source "ReviewSuggestionsPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 276
    const/4 v2, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 278
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v3

    add-int v4, v0, v2

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 280
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    if-ne v1, v2, :cond_0

    .line 282
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Lcom/yelp/android/ui/util/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj;->notifyDataSetChanged()V

    .line 285
    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->PostReviewYNRA:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v1, v0}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/IriSource;Ljava/util/List;)V

    .line 287
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewSuggestionLoadedMore:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 288
    return-void
.end method
