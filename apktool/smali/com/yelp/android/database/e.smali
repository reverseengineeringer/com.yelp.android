.class final Lcom/yelp/android/database/e;
.super Lcom/yelp/android/database/y;
.source "AdapterRecentlyViewedBusinesses.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/yelp/android/database/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/database/aa;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/yelp/android/database/d;->a:Lcom/yelp/android/database/aa;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x7

    return v0
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/yelp/android/database/e;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
