.class Lcom/yelp/android/ui/activities/db;
.super Lcom/yelp/android/ui/panels/a;
.source "ActivityMyOffers.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/panels/a;-><init>(Landroid/content/Context;)V

    .line 167
    iput-object p1, p0, Lcom/yelp/android/ui/activities/db;->a:Ljava/util/List;

    .line 168
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/db;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/yelp/android/ui/activities/feed/c;)V
    .locals 4

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/panels/a;->a(ILcom/yelp/android/ui/activities/feed/c;)V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/db;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    .line 189
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    iget-object v2, p2, Lcom/yelp/android/ui/activities/feed/c;->s:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/serializable/YelpBusiness;->getDistanceFormatted(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v1

    .line 191
    const v2, 0x7f0200ef

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getSpan()Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v3, v0, v1}, Lcom/yelp/android/ui/activities/feed/c;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p2, Lcom/yelp/android/ui/activities/feed/c;->r:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 194
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/db;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/db;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
