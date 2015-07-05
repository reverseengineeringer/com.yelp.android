.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$4;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;
.source "BusinessBasicInfo.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$1;)V

    return-void
.end method


# virtual methods
.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f070387

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->isMessageToBusinessEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/Features;->message_to_business:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
