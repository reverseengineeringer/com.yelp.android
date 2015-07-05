.class public Lcom/yelp/android/ui/util/cb;
.super Ljava/lang/Object;
.source "SuggestionFilter.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Landroid/location/Location;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLandroid/location/Location;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p1, p0, Lcom/yelp/android/ui/util/cb;->a:Ljava/lang/String;

    .line 397
    iput-boolean p2, p0, Lcom/yelp/android/ui/util/cb;->b:Z

    .line 398
    iput-boolean p3, p0, Lcom/yelp/android/ui/util/cb;->c:Z

    .line 399
    iput-object p4, p0, Lcom/yelp/android/ui/util/cb;->d:Landroid/location/Location;

    .line 400
    iput-object p5, p0, Lcom/yelp/android/ui/util/cb;->e:Ljava/lang/String;

    .line 401
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 414
    if-ne p0, p1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 417
    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 419
    goto :goto_0

    .line 420
    :cond_3
    check-cast p1, Lcom/yelp/android/ui/util/cb;

    .line 421
    iget-object v2, p0, Lcom/yelp/android/ui/util/cb;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 422
    iget-object v2, p1, Lcom/yelp/android/ui/util/cb;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 423
    goto :goto_0

    .line 424
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/ui/util/cb;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/ui/util/cb;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 425
    goto :goto_0

    .line 426
    :cond_5
    iget-boolean v2, p0, Lcom/yelp/android/ui/util/cb;->b:Z

    iget-boolean v3, p1, Lcom/yelp/android/ui/util/cb;->b:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 427
    goto :goto_0

    .line 429
    :cond_6
    iget-boolean v2, p0, Lcom/yelp/android/ui/util/cb;->c:Z

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/yelp/android/ui/util/cb;->d:Landroid/location/Location;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/yelp/android/ui/util/cb;->d:Landroid/location/Location;

    iget-object v3, p1, Lcom/yelp/android/ui/util/cb;->d:Landroid/location/Location;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p1, Lcom/yelp/android/ui/util/cb;->d:Landroid/location/Location;

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/yelp/android/ui/util/cb;->d:Landroid/location/Location;

    iget-object v3, p0, Lcom/yelp/android/ui/util/cb;->d:Landroid/location/Location;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    move v0, v1

    .line 432
    goto :goto_0

    .line 433
    :cond_9
    iget-object v2, p0, Lcom/yelp/android/ui/util/cb;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/ui/util/cb;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 434
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 405
    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/util/cb;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 408
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/yelp/android/ui/util/cb;->b:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    .line 409
    return v0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/cb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 408
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1
.end method
