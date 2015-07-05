.class public Lcom/yelp/android/ui/panels/businesssearch/j;
.super Lcom/yelp/android/ui/panels/businesssearch/g;
.source "LocalAdSearchAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/panels/businesssearch/g",
        "<",
        "Lcom/yelp/android/serializable/SearchResultLocalAd;",
        ">;",
        "Lcom/yelp/android/ui/util/i;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/g;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/j;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 36
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->isRatingDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-array v0, v1, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/j;->b([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 41
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/panels/businesssearch/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    new-array v0, v1, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/j;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    goto :goto_0
.end method
