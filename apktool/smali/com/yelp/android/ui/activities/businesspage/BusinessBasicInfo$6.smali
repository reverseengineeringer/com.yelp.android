.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$6;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;
.source "BusinessBasicInfo.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$1;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getPlatformAction()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformAction;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIconUrl(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getPlatformAction()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformAction;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getPlatformAction()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformAction;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getPlatformAction()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
