.class final Lcom/yelp/android/appdata/p$b;
.super Ljava/lang/Object;
.source "StatefulLocationService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

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
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/p$b;->a:Ljava/util/HashMap;

    .line 683
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
    .line 757
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 758
    const/high16 v1, 0x3f800000    # 1.0f

    .line 759
    if-eqz v0, :cond_1

    .line 760
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 761
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 762
    const v0, 0x3f99999a    # 1.2f

    .line 767
    :goto_0
    return v0

    .line 763
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 764
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

    const/high16 v2, 0x3f800000    # 1.0f

    .line 711
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 712
    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 713
    const/4 p0, 0x0

    .line 750
    :cond_1
    :goto_0
    return-object p0

    .line 714
    :cond_2
    if-nez p0, :cond_1

    move-object p0, p1

    .line 715
    goto :goto_0

    .line 720
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/yelp/android/appdata/p$b;->a(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v0

    div-float v1, v2, v0

    .line 721
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/yelp/android/appdata/p$b;->a(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v0

    div-float/2addr v2, v0

    .line 723
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    move-object v0, p0

    .line 726
    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, p2, v4

    .line 727
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long v6, p2, v6

    .line 729
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-nez v3, :cond_9

    .line 731
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-nez v1, :cond_6

    move-object p0, v0

    .line 732
    goto :goto_0

    :cond_5
    move-object v0, p1

    .line 723
    goto :goto_1

    .line 733
    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-long v2, v8, v6

    cmp-long v1, v4, v2

    if-ltz v1, :cond_1

    .line 735
    :cond_7
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-long v2, v8, v4

    cmp-long v1, v6, v2

    if-gez v1, :cond_8

    move-object p0, p1

    .line 736
    goto :goto_0

    :cond_8
    move-object p0, v0

    .line 738
    goto :goto_0

    .line 745
    :cond_9
    long-to-float v0, v4

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    mul-float/2addr v0, v1

    long-to-float v1, v6

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    move-object p0, p1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/location/Location;Landroid/location/Location;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 687
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v0

    .line 690
    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    .line 691
    goto :goto_0

    .line 693
    :cond_2
    if-eq p1, p2, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 694
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 696
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/yelp/android/appdata/p$b;->a:Ljava/util/HashMap;

    invoke-static {p1, p2, v2, v3, v4}, Lcom/yelp/android/appdata/p$b;->a(Landroid/location/Location;Landroid/location/Location;JLjava/util/HashMap;)Landroid/location/Location;

    move-result-object v2

    .line 698
    if-ne v2, p1, :cond_5

    move v0, v1

    .line 699
    goto :goto_0

    .line 700
    :cond_5
    if-eq v2, p2, :cond_0

    move v0, v1

    .line 703
    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 671
    check-cast p1, Landroid/location/Location;

    check-cast p2, Landroid/location/Location;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/p$b;->a(Landroid/location/Location;Landroid/location/Location;)I

    move-result v0

    return v0
.end method
