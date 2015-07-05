.class public Lcom/yelp/android/ba/e;
.super Lcom/yelp/android/az/a;
.source "FeedStandardBusinessViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/az/a;-><init>(Landroid/view/View;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
