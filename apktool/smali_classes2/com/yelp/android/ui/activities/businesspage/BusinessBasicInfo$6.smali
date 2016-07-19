.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$6;
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
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$1;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aH()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformAction;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIconUrl(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aH()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformAction;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$6;->getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->access$100()I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aH()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformAction;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aH()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
