.class Lcom/yelp/android/serializable/PlatformSearchAction$1;
.super Lcom/yelp/android/ui/activities/businesspage/g;
.source "PlatformSearchAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/serializable/PlatformSearchAction;->d()Lcom/yelp/android/ui/activities/businesspage/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/PlatformSearchAction;


# direct methods
.method constructor <init>(Lcom/yelp/android/serializable/PlatformSearchAction;Lcom/yelp/android/serializable/SearchAction;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yelp/android/serializable/PlatformSearchAction$1;->a:Lcom/yelp/android/serializable/PlatformSearchAction;

    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/g;-><init>(Lcom/yelp/android/serializable/SearchAction;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 1

    .prologue
    .line 115
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
    .line 121
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aH()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformAction;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 110
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
