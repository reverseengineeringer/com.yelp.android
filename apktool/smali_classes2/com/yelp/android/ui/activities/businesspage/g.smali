.class public abstract Lcom/yelp/android/ui/activities/businesspage/g;
.super Ljava/lang/Object;
.source "HighlightedBusinessInfo.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/businesspage/b;


# instance fields
.field private final a:Lcom/yelp/android/serializable/SearchAction;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/SearchAction;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/g;->a:Lcom/yelp/android/serializable/SearchAction;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/SearchAction;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/g;->a:Lcom/yelp/android/serializable/SearchAction;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getIconUrl(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/g;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTintColor()I
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/g;->a:Lcom/yelp/android/serializable/SearchAction;

    invoke-interface {v0}, Lcom/yelp/android/serializable/SearchAction;->j()[I

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/g;->a:Lcom/yelp/android/serializable/SearchAction;

    invoke-interface {v0}, Lcom/yelp/android/serializable/SearchAction;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public isSubtitleExpanded()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
