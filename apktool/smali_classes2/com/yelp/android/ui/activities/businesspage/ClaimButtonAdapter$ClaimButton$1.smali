.class final enum Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton$1;
.super Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;
.source "ClaimButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f0204e3

    return v0
.end method

.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0701d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f070142

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->I()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
