.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$5;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;
.source "BusinessBasicInfo.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$1;)V

    return-void
.end method


# virtual methods
.method public getIconUrl(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getMenu()Lcom/yelp/android/serializable/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Menu;->getActionImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getMenu()Lcom/yelp/android/serializable/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Menu;->getActionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getMenu()Lcom/yelp/android/serializable/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Menu;->getActionTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getMenu()Lcom/yelp/android/serializable/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method