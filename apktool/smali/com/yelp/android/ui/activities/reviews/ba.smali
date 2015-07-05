.class public Lcom/yelp/android/ui/activities/reviews/ba;
.super Lcom/yelp/android/ui/util/au;
.source "ReviewSuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/ReviewSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/panels/at;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/panels/at;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ba;->a:Lcom/yelp/android/ui/panels/at;

    .line 17
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ba;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewSuggestion;

    .line 24
    if-eqz p2, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/yelp/android/ui/panels/ak;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/ak;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    :cond_0
    new-instance p2, Lcom/yelp/android/ui/panels/ak;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ba;->a:Lcom/yelp/android/ui/panels/at;

    sget-object v3, Lcom/yelp/android/analytics/iris/IriSource;->AddReviewPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-direct {p2, v1, v0, v2, v3}, Lcom/yelp/android/ui/panels/ak;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/ReviewSuggestion;Lcom/yelp/android/ui/panels/at;Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 31
    :goto_0
    return-object p2

    .line 28
    :cond_1
    check-cast p2, Lcom/yelp/android/ui/panels/ak;

    .line 29
    invoke-virtual {p2, v0}, Lcom/yelp/android/ui/panels/ak;->setSuggestion(Lcom/yelp/android/serializable/ReviewSuggestion;)V

    goto :goto_0
.end method
