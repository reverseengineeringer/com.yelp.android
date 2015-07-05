.class public final Lcom/yelp/android/services/c;
.super Lcom/yelp/android/services/q;
.source "DealShareFormatter.java"


# instance fields
.field private final a:Lcom/yelp/android/serializable/YelpDeal;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpDeal;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/services/q;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yelp/android/services/c;->a:Lcom/yelp/android/serializable/YelpDeal;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/services/c;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/yelp/android/analytics/h;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/analytics/h;

    invoke-direct {v0}, Lcom/yelp/android/analytics/h;-><init>()V

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DealShare:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/b;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    const-string/jumbo v1, "deal_id"

    iget-object v2, p0, Lcom/yelp/android/services/c;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/services/o;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 49
    invoke-virtual {p2}, Lcom/yelp/android/services/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "android.intent.extra.SUBJECT"

    iget-object v1, p0, Lcom/yelp/android/services/c;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1, p1}, Lcom/yelp/android/serializable/YelpDeal;->getDealTitleWithBizName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_0
    invoke-virtual {p2}, Lcom/yelp/android/services/o;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/services/q;->a(Landroid/content/Context;Lcom/yelp/android/services/o;Landroid/content/Intent;)V

    .line 71
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/services/c;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpDeal;->getDealTitleWithBizName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p2}, Lcom/yelp/android/services/o;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x82

    if-le v1, v2, :cond_2

    .line 66
    iget-object v0, p0, Lcom/yelp/android/services/c;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_2
    const-string/jumbo v1, "android.intent.extra.TEXT"

    const v2, 0x7f0706ae

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/yelp/android/services/c;->c(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/services/c;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpDeal;->getDealTitleWithBizName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
