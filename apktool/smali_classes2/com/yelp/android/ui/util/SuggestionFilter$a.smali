.class public Lcom/yelp/android/ui/util/SuggestionFilter$a;
.super Ljava/lang/Object;
.source "SuggestionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/SuggestionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


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
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->a:Ljava/lang/String;

    .line 422
    iput-boolean p2, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->b:Z

    .line 423
    iput-boolean p3, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->c:Z

    .line 424
    iput-object p4, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->d:Landroid/location/Location;

    .line 425
    iput-object p5, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->e:Ljava/lang/String;

    .line 426
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    if-ne p0, p1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 442
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 443
    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 446
    goto :goto_0

    .line 448
    :cond_3
    check-cast p1, Lcom/yelp/android/ui/util/SuggestionFilter$a;

    .line 449
    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 450
    iget-object v2, p1, Lcom/yelp/android/ui/util/SuggestionFilter$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 451
    goto :goto_0

    .line 453
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/ui/util/SuggestionFilter$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 454
    goto :goto_0

    .line 456
    :cond_5
    iget-boolean v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->b:Z

    iget-boolean v3, p1, Lcom/yelp/android/ui/util/SuggestionFilter$a;->b:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 457
    goto :goto_0

    .line 460
    :cond_6
    iget-boolean v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->c:Z

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->d:Landroid/location/Location;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->d:Landroid/location/Location;

    iget-object v3, p1, Lcom/yelp/android/ui/util/SuggestionFilter$a;->d:Landroid/location/Location;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p1, Lcom/yelp/android/ui/util/SuggestionFilter$a;->d:Landroid/location/Location;

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/yelp/android/ui/util/SuggestionFilter$a;->d:Landroid/location/Location;

    iget-object v3, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->d:Landroid/location/Location;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    move v0, v1

    .line 463
    goto :goto_0

    .line 464
    :cond_9
    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/ui/util/SuggestionFilter$a;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 465
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 430
    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 433
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->b:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    .line 434
    return v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 433
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1
.end method
