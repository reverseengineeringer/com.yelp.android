.class public Lcom/yelp/android/dc/b;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/lang3/tuple/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/yelp/android/dc/b;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    .line 225
    return-void
.end method


# virtual methods
.method public a(BB)Lcom/yelp/android/dc/b;
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v0, :cond_0

    .line 576
    :goto_0
    return-object p0

    .line 575
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(CC)Lcom/yelp/android/dc/b;
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v0, :cond_0

    .line 561
    :goto_0
    return-object p0

    .line 560
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(DD)Lcom/yelp/android/dc/b;
    .locals 5

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yelp/android/dc/b;->a(JJ)Lcom/yelp/android/dc/b;

    move-result-object p0

    goto :goto_0
.end method

.method public a(FF)Lcom/yelp/android/dc/b;
    .locals 2

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object p0

    goto :goto_0
.end method

.method public a(II)Lcom/yelp/android/dc/b;
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-object p0

    .line 530
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(JJ)Lcom/yelp/android/dc/b;
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-object p0

    .line 515
    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    iget-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-object p0

    .line 460
    :cond_1
    if-eq p1, p2, :cond_0

    .line 463
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 464
    :cond_2
    invoke-virtual {p0, v2}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 467
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_4

    .line 470
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    goto :goto_0

    .line 471
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 473
    invoke-virtual {p0, v2}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 477
    :cond_5
    instance-of v0, p1, [J

    if-eqz v0, :cond_6

    .line 478
    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/dc/b;->a([J[J)Lcom/yelp/android/dc/b;

    goto :goto_0

    .line 479
    :cond_6
    instance-of v0, p1, [I

    if-eqz v0, :cond_7

    .line 480
    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    goto :goto_0

    .line 481
    :cond_7
    instance-of v0, p1, [S

    if-eqz v0, :cond_8

    .line 482
    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/dc/b;->a([S[S)Lcom/yelp/android/dc/b;

    goto :goto_0

    .line 483
    :cond_8
    instance-of v0, p1, [C

    if-eqz v0, :cond_9

    .line 484
    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/dc/b;->a([C[C)Lcom/yelp/android/dc/b;

    goto :goto_0

    .line 485
    :cond_9
    instance-of v0, p1, [B

    if-eqz v0, :cond_a

    .line 486
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/dc/b;->a([B[B)Lcom/yelp/android/dc/b;

    goto :goto_0

    .line 487
    :cond_a
    instance-of v0, p1, [D

    if-eqz v0, :cond_b

    .line 488
    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/dc/b;->a([D[D)Lcom/yelp/android/dc/b;

    goto/16 :goto_0

    .line 489
    :cond_b
    instance-of v0, p1, [F

    if-eqz v0, :cond_c

    .line 490
    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/dc/b;->a([F[F)Lcom/yelp/android/dc/b;

    goto/16 :goto_0

    .line 491
    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_d

    .line 492
    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/dc/b;->a([Z[Z)Lcom/yelp/android/dc/b;

    goto/16 :goto_0

    .line 495
    :cond_d
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/dc/b;->a([Ljava/lang/Object;[Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    goto/16 :goto_0
.end method

.method public a(SS)Lcom/yelp/android/dc/b;
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v0, :cond_0

    .line 546
    :goto_0
    return-object p0

    .line 545
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Z)Lcom/yelp/android/dc/b;
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-object p0

    .line 442
    :cond_0
    iput-boolean p1, p0, Lcom/yelp/android/dc/b;->b:Z

    goto :goto_0
.end method

.method public a(ZZ)Lcom/yelp/android/dc/b;
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-object p0

    .line 630
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a([B[B)Lcom/yelp/android/dc/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 800
    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v1, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-object p0

    .line 803
    :cond_1
    if-eq p1, p2, :cond_0

    .line 806
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 807
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 810
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 811
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 814
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-eqz v1, :cond_0

    .line 815
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/dc/b;->a(BB)Lcom/yelp/android/dc/b;

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([C[C)Lcom/yelp/android/dc/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 769
    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v1, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-object p0

    .line 772
    :cond_1
    if-eq p1, p2, :cond_0

    .line 775
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 776
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 779
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 780
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 783
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-eqz v1, :cond_0

    .line 784
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/dc/b;->a(CC)Lcom/yelp/android/dc/b;

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([D[D)Lcom/yelp/android/dc/b;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 831
    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v1, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-object p0

    .line 834
    :cond_1
    if-eq p1, p2, :cond_0

    .line 837
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 838
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 841
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 842
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 845
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-eqz v1, :cond_0

    .line 846
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(DD)Lcom/yelp/android/dc/b;

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([F[F)Lcom/yelp/android/dc/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 862
    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v1, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-object p0

    .line 865
    :cond_1
    if-eq p1, p2, :cond_0

    .line 868
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 869
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 872
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 873
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 876
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-eqz v1, :cond_0

    .line 877
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/dc/b;->a(FF)Lcom/yelp/android/dc/b;

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([I[I)Lcom/yelp/android/dc/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 707
    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-object p0

    .line 710
    :cond_1
    if-eq p1, p2, :cond_0

    .line 713
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 714
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 717
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 718
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 721
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-eqz v1, :cond_0

    .line 722
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([J[J)Lcom/yelp/android/dc/b;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 676
    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-object p0

    .line 679
    :cond_1
    if-eq p1, p2, :cond_0

    .line 682
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 683
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 686
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 687
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 690
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-eqz v1, :cond_0

    .line 691
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(JJ)Lcom/yelp/android/dc/b;

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([Ljava/lang/Object;[Ljava/lang/Object;)Lcom/yelp/android/dc/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 645
    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-object p0

    .line 648
    :cond_1
    if-eq p1, p2, :cond_0

    .line 651
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 652
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 655
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 656
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 659
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-eqz v1, :cond_0

    .line 660
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([S[S)Lcom/yelp/android/dc/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 738
    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-object p0

    .line 741
    :cond_1
    if-eq p1, p2, :cond_0

    .line 744
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 745
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 748
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 749
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 752
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-eqz v1, :cond_0

    .line 753
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/dc/b;->a(SS)Lcom/yelp/android/dc/b;

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([Z[Z)Lcom/yelp/android/dc/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 893
    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-nez v1, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-object p0

    .line 896
    :cond_1
    if-eq p1, p2, :cond_0

    .line 899
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 900
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 903
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 904
    invoke-virtual {p0, v0}, Lcom/yelp/android/dc/b;->b(Z)V

    goto :goto_0

    .line 907
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/dc/b;->b:Z

    if-eqz v1, :cond_0

    .line 908
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/yelp/android/dc/b;->b:Z

    return v0
.end method

.method protected b(Z)V
    .locals 0

    .prologue
    .line 944
    iput-boolean p1, p0, Lcom/yelp/android/dc/b;->b:Z

    .line 945
    return-void
.end method
