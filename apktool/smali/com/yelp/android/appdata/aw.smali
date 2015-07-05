.class final Lcom/yelp/android/appdata/aw;
.super Ljava/lang/Object;
.source "StatefulLocationService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/aw;->a:Ljava/util/HashMap;

    .line 647
    return-void
.end method

.method private static final a(Ljava/util/HashMap;Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")F"
        }
    .end annotation

    .prologue
    .line 714
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 715
    const/high16 v1, 0x3f800000    # 1.0f

    .line 716
    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 718
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 719
    const v0, 0x3f99999a    # 1.2f

    .line 724
    :goto_0
    return v0

    .line 720
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 721
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected static a(Landroid/location/Location;Landroid/location/Location;JLjava/util/HashMap;)Landroid/location/Location;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Landroid/location/Location;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/location/Location;"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 672
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 673
    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 674
    const/4 p0, 0x0

    .line 707
    :cond_1
    :goto_0
    return-object p0

    .line 675
    :cond_2
    if-nez p0, :cond_1

    move-object p0, p1

    .line 676
    goto :goto_0

    .line 680
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/yelp/android/appdata/aw;->a(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v0

    div-float v2, v1, v0

    .line 681
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/yelp/android/appdata/aw;->a(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v0

    div-float v3, v1, v0

    .line 683
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    move-object v0, p0

    .line 686
    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, p2, v4

    .line 687
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long v6, p2, v6

    .line 689
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_9

    .line 691
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-nez v1, :cond_6

    move-object p0, v0

    .line 692
    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 683
    goto :goto_1

    .line 689
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 693
    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-long v2, v8, v6

    cmp-long v1, v4, v2

    if-ltz v1, :cond_1

    .line 695
    :cond_7
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-long v2, v8, v4

    cmp-long v1, v6, v2

    if-gez v1, :cond_8

    move-object p0, p1

    .line 696
    goto :goto_0

    :cond_8
    move-object p0, v0

    .line 698
    goto :goto_0

    .line 705
    :cond_9
    long-to-float v0, v4

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    mul-float/2addr v0, v1

    long-to-float v1, v6

    mul-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    move-object p0, p1

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/location/Location;Landroid/location/Location;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 651
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 667
    :cond_0
    :goto_0
    return v0

    .line 654
    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    .line 655
    goto :goto_0

    .line 657
    :cond_2
    if-eq p1, p2, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 658
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 660
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/yelp/android/appdata/aw;->a:Ljava/util/HashMap;

    invoke-static {p1, p2, v2, v3, v4}, Lcom/yelp/android/appdata/aw;->a(Landroid/location/Location;Landroid/location/Location;JLjava/util/HashMap;)Landroid/location/Location;

    move-result-object v2

    .line 662
    if-ne v2, p1, :cond_5

    move v0, v1

    .line 663
    goto :goto_0

    .line 664
    :cond_5
    if-eq v2, p2, :cond_0

    move v0, v1

    .line 667
    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 636
    check-cast p1, Landroid/location/Location;

    check-cast p2, Landroid/location/Location;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/aw;->a(Landroid/location/Location;Landroid/location/Location;)I

    move-result v0

    return v0
.end method
