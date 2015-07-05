.class Lcom/yelp/android/ui/activities/dl;
.super Lcom/yelp/android/ui/panels/a;
.source "ActivityRankedBusinesses.java"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Bundle;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/a;-><init>(Landroid/content/Context;)V

    .line 255
    iput-object p1, p0, Lcom/yelp/android/ui/activities/dl;->c:Landroid/content/Context;

    .line 256
    iput-object p2, p0, Lcom/yelp/android/ui/activities/dl;->a:Ljava/util/ArrayList;

    .line 257
    iput-object p3, p0, Lcom/yelp/android/ui/activities/dl;->b:Landroid/os/Bundle;

    .line 258
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/dl;->b(I)Lcom/yelp/android/serializable/RankLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/yelp/android/ui/activities/feed/c;)V
    .locals 5

    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/panels/a;->a(ILcom/yelp/android/ui/activities/feed/c;)V

    .line 297
    iget-object v0, p2, Lcom/yelp/android/ui/activities/feed/c;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/dl;->c:Landroid/content/Context;

    const v2, 0x7f0e0006

    iget-object v3, p0, Lcom/yelp/android/ui/activities/dl;->b:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/dl;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method

.method public b(I)Lcom/yelp/android/serializable/RankLocation;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RankLocation;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 268
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/dl;->b(I)Lcom/yelp/android/serializable/RankLocation;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RankLocation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 304
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/dl;->b(I)Lcom/yelp/android/serializable/RankLocation;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/yelp/android/serializable/RankLocation;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 306
    if-nez v0, :cond_1

    .line 307
    if-nez p2, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/dl;->a()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300fa

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 310
    new-instance v0, Lcom/yelp/android/ui/activities/dk;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/dk;-><init>(Landroid/view/View;)V

    .line 311
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 313
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/dk;

    .line 314
    iget-object v2, v0, Lcom/yelp/android/ui/activities/dk;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/RankLocation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v2, v0, Lcom/yelp/android/ui/activities/dk;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/dl;->c:Landroid/content/Context;

    const v4, 0x7f0e000c

    invoke-virtual {v1}, Lcom/yelp/android/serializable/RankLocation;->getTopUserCount()I

    move-result v1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v3, v4, v1, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, v0, Lcom/yelp/android/ui/activities/dk;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 320
    :goto_0
    return-object p2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/panels/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x2

    return v0
.end method
