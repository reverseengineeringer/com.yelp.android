.class public final Lcom/yelp/android/services/b;
.super Lcom/yelp/android/services/q;
.source "BusinessShareFormatter.java"


# instance fields
.field private final a:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/services/q;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/services/b;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/services/b;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->getYelpUrl(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/yelp/android/analytics/h;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/analytics/h;

    invoke-direct {v0}, Lcom/yelp/android/analytics/h;-><init>()V

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessShare:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/b;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/services/b;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/services/o;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/services/q;->a(Landroid/content/Context;Lcom/yelp/android/services/o;Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p2}, Lcom/yelp/android/services/o;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v0, "android.intent.extra.SUBJECT"

    const v1, 0x7f070562

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/services/b;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/services/b;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getShareStringShort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
