.class public Lcom/yelp/android/ui/activities/deals/a;
.super Ljava/lang/Object;
.source "DealQuantityValidator.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpDeal;

.field private b:Lcom/yelp/android/serializable/YelpDealOption;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/YelpDealOption;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/serializable/YelpDeal;

    .line 19
    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/a;->b:Lcom/yelp/android/serializable/YelpDealOption;

    .line 20
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->n()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->m()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 2

    .prologue
    .line 56
    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/a;->a()I

    move-result v0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/a;->b:Lcom/yelp/android/serializable/YelpDealOption;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDealOption;->b()I

    move-result v1

    if-gez v1, :cond_1

    :goto_1
    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->l()I

    move-result v0

    goto :goto_0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/a;->b:Lcom/yelp/android/serializable/YelpDealOption;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDealOption;->b()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method

.method public a(II)Z
    .locals 1

    .prologue
    .line 68
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->l()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->n()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->m()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
