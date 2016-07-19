.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$4;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;
.source "BusinessBasicInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$1;)V

    return-void
.end method


# virtual methods
.method public getIconUrl(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aK()Lcom/yelp/android/serializable/MessageTheBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MessageTheBusiness;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aK()Lcom/yelp/android/serializable/MessageTheBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MessageTheBusiness;->c()Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleColor(Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aK()Lcom/yelp/android/serializable/MessageTheBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MessageTheBusiness;->b()[I

    move-result-object v1

    .line 116
    if-eqz v1, :cond_0

    aget v0, v1, v0

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x2

    aget v1, v1, v3

    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aK()Lcom/yelp/android/serializable/MessageTheBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MessageTheBusiness;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aK()Lcom/yelp/android/serializable/MessageTheBusiness;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
