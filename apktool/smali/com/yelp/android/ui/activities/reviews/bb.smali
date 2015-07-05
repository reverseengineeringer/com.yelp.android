.class Lcom/yelp/android/ui/activities/reviews/bb;
.super Ljava/lang/Object;
.source "ReviewSuggestionsPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/bb;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bb;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/bb;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 270
    const/4 v2, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 272
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/bb;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/bb;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v4

    add-int v5, v0, v2

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    if-ne v1, v2, :cond_0

    .line 275
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bb;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Lcom/yelp/android/ui/util/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->notifyDataSetChanged()V

    .line 278
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewSuggestionLoadedMore:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 279
    return-void
.end method
