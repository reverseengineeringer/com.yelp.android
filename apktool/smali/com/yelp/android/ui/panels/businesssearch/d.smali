.class public Lcom/yelp/android/ui/panels/businesssearch/d;
.super Lcom/yelp/android/ui/panels/businesssearch/b;
.source "LocalAdSearchAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/panels/businesssearch/b",
        "<",
        "Lcom/yelp/android/serializable/SearchResultLocalAd;",
        ">;",
        "Lcom/yelp/android/ui/util/f;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/b;-><init>(Landroid/app/Activity;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 33
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-array v0, v1, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/d;->b([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 38
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/panels/businesssearch/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    new-array v0, v1, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/d;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    goto :goto_0
.end method
