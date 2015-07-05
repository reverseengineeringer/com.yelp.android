.class public Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;
.super Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;
.source "ActivityReviewSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar",
        "<",
        "Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e()Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Lcom/yelp/android/ui/activities/support/YelpListFragment;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->a()Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    move-result-object v0

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->AddReviewPage:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    const/16 v0, 0x418

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 88
    const-string/jumbo v0, "extra.search_text"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->b:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "extra.location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->c:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "extra.search.launch_method"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->a:Landroid/widget/EditText;

    const v2, 0x7f0706ab

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->e()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0c016a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->a:Landroid/widget/EditText;

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/k;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/k;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->a:Landroid/widget/EditText;

    const v1, 0x7f0701d6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    const-string/jumbo v0, "search_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->b:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "search_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->c:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->a:Landroid/widget/EditText;

    const v1, 0x7f0706ab

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    const-string/jumbo v0, "search_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "search_location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
