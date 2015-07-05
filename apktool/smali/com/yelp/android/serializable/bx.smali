.class Lcom/yelp/android/serializable/bx;
.super Lcom/yelp/android/ui/activities/businesspage/cf;
.source "PlatformSearchAction.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/PlatformSearchAction;


# direct methods
.method constructor <init>(Lcom/yelp/android/serializable/PlatformSearchAction;Lcom/yelp/android/serializable/SearchAction;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yelp/android/serializable/bx;->a:Lcom/yelp/android/serializable/PlatformSearchAction;

    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/cf;-><init>(Lcom/yelp/android/serializable/SearchAction;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 1

    .prologue
    .line 113
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
    .line 119
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getPlatformAction()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformAction;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getPlatformAction()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformAction;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 108
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
