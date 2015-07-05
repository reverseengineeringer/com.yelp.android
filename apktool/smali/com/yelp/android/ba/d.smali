.class public Lcom/yelp/android/ba/d;
.super Lcom/yelp/android/az/a;
.source "FeedFullContentBusinessViewHolder.java"


# instance fields
.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/az/a;-><init>(Landroid/view/View;I)V

    .line 23
    iget-object v0, p0, Lcom/yelp/android/ba/d;->e:Landroid/view/View;

    const v1, 0x7f0c011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ba/d;->f:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lcom/yelp/android/ba/d;->e:Landroid/view/View;

    const v1, 0x7f0c032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ba/d;->g:Landroid/widget/TextView;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotos()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getLargestUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;FI)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/az/a;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;FI)V

    .line 30
    iget-object v0, p0, Lcom/yelp/android/ba/d;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/yelp/android/ba/d;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getCategoryForBusinessSearchResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method
