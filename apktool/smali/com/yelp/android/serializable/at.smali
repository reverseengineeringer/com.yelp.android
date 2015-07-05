.class public final Lcom/yelp/android/serializable/at;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/yelp/android/serializable/at;->a:Ljava/lang/String;

    .line 268
    iput-wide p2, p0, Lcom/yelp/android/serializable/at;->b:D

    .line 269
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 284
    if-ne p0, p1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 288
    goto :goto_0

    .line 290
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/at;

    if-nez v2, :cond_3

    move v0, v1

    .line 291
    goto :goto_0

    .line 293
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/at;

    .line 294
    iget-object v2, p0, Lcom/yelp/android/serializable/at;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 295
    iget-object v2, p1, Lcom/yelp/android/serializable/at;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 296
    goto :goto_0

    .line 298
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/at;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/at;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 299
    goto :goto_0

    .line 301
    :cond_5
    iget-wide v2, p0, Lcom/yelp/android/serializable/at;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/yelp/android/serializable/at;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 303
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 273
    .line 275
    iget-object v0, p0, Lcom/yelp/android/serializable/at;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 277
    iget-wide v2, p0, Lcom/yelp/android/serializable/at;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 278
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 279
    return v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/at;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
