.class public Lcom/yelp/android/dc/c;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"


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
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/yelp/android/dc/c;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 536
    const/16 v0, 0x25

    iput v0, p0, Lcom/yelp/android/dc/c;->b:I

    .line 537
    const/16 v0, 0x11

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 538
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput v2, p0, Lcom/yelp/android/dc/c;->c:I

    .line 558
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "HashCodeBuilder requires an odd initial value"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/c;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 559
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    :goto_1
    const-string/jumbo v0, "HashCodeBuilder requires an odd multiplier"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/c;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iput p2, p0, Lcom/yelp/android/dc/c;->b:I

    .line 561
    iput p1, p0, Lcom/yelp/android/dc/c;->c:I

    .line 562
    return-void

    :cond_0
    move v0, v2

    .line 558
    goto :goto_0

    :cond_1
    move v1, v2

    .line 559
    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 942
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    return v0
.end method

.method public a(B)Lcom/yelp/android/dc/c;
    .locals 2

    .prologue
    .line 622
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 623
    return-object p0
.end method

.method public a(C)Lcom/yelp/android/dc/c;
    .locals 2

    .prologue
    .line 658
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 659
    return-object p0
.end method

.method public a(D)Lcom/yelp/android/dc/c;
    .locals 3

    .prologue
    .line 692
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/dc/c;->a(J)Lcom/yelp/android/dc/c;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/yelp/android/dc/c;
    .locals 2

    .prologue
    .line 725
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 726
    return-object p0
.end method

.method public a(I)Lcom/yelp/android/dc/c;
    .locals 2

    .prologue
    .line 759
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 760
    return-object p0
.end method

.method public a(J)Lcom/yelp/android/dc/c;
    .locals 5

    .prologue
    .line 797
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 798
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;
    .locals 2

    .prologue
    .line 831
    if-nez p1, :cond_0

    .line 832
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 862
    :goto_0
    return-object p0

    .line 835
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 838
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    .line 839
    check-cast p1, [J

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/yelp/android/dc/c;->a([J)Lcom/yelp/android/dc/c;

    goto :goto_0

    .line 840
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 841
    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    goto :goto_0

    .line 842
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 843
    check-cast p1, [S

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/yelp/android/dc/c;->a([S)Lcom/yelp/android/dc/c;

    goto :goto_0

    .line 844
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 845
    check-cast p1, [C

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lcom/yelp/android/dc/c;->a([C)Lcom/yelp/android/dc/c;

    goto :goto_0

    .line 846
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 847
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/yelp/android/dc/c;->a([B)Lcom/yelp/android/dc/c;

    goto :goto_0

    .line 848
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 849
    check-cast p1, [D

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/yelp/android/dc/c;->a([D)Lcom/yelp/android/dc/c;

    goto :goto_0

    .line 850
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 851
    check-cast p1, [F

    check-cast p1, [F

    invoke-virtual {p0, p1}, Lcom/yelp/android/dc/c;->a([F)Lcom/yelp/android/dc/c;

    goto :goto_0

    .line 852
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 853
    check-cast p1, [Z

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lcom/yelp/android/dc/c;->a([Z)Lcom/yelp/android/dc/c;

    goto :goto_0

    .line 856
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/yelp/android/dc/c;->a([Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    goto :goto_0

    .line 859
    :cond_9
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    goto :goto_0
.end method

.method public a(S)Lcom/yelp/android/dc/c;
    .locals 2

    .prologue
    .line 895
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 896
    return-object p0
.end method

.method public a(Z)Lcom/yelp/android/dc/c;
    .locals 2

    .prologue
    .line 586
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 587
    return-object p0

    .line 586
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a([B)Lcom/yelp/android/dc/c;
    .locals 3

    .prologue
    .line 638
    if-nez p1, :cond_1

    .line 639
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 645
    :cond_0
    return-object p0

    .line 641
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v2, p1, v0

    .line 642
    invoke-virtual {p0, v2}, Lcom/yelp/android/dc/c;->a(B)Lcom/yelp/android/dc/c;

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([C)Lcom/yelp/android/dc/c;
    .locals 3

    .prologue
    .line 672
    if-nez p1, :cond_1

    .line 673
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 679
    :cond_0
    return-object p0

    .line 675
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-char v2, p1, v0

    .line 676
    invoke-virtual {p0, v2}, Lcom/yelp/android/dc/c;->a(C)Lcom/yelp/android/dc/c;

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([D)Lcom/yelp/android/dc/c;
    .locals 4

    .prologue
    .line 705
    if-nez p1, :cond_1

    .line 706
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 712
    :cond_0
    return-object p0

    .line 708
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    .line 709
    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/dc/c;->a(D)Lcom/yelp/android/dc/c;

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([F)Lcom/yelp/android/dc/c;
    .locals 3

    .prologue
    .line 739
    if-nez p1, :cond_1

    .line 740
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 746
    :cond_0
    return-object p0

    .line 742
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 743
    invoke-virtual {p0, v2}, Lcom/yelp/android/dc/c;->a(F)Lcom/yelp/android/dc/c;

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([I)Lcom/yelp/android/dc/c;
    .locals 3

    .prologue
    .line 773
    if-nez p1, :cond_1

    .line 774
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 780
    :cond_0
    return-object p0

    .line 776
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 777
    invoke-virtual {p0, v2}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    .line 776
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([J)Lcom/yelp/android/dc/c;
    .locals 4

    .prologue
    .line 811
    if-nez p1, :cond_1

    .line 812
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 818
    :cond_0
    return-object p0

    .line 814
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    .line 815
    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/dc/c;->a(J)Lcom/yelp/android/dc/c;

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([Ljava/lang/Object;)Lcom/yelp/android/dc/c;
    .locals 3

    .prologue
    .line 875
    if-nez p1, :cond_1

    .line 876
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 882
    :cond_0
    return-object p0

    .line 878
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 879
    invoke-virtual {p0, v2}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([S)Lcom/yelp/android/dc/c;
    .locals 3

    .prologue
    .line 909
    if-nez p1, :cond_1

    .line 910
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 916
    :cond_0
    return-object p0

    .line 912
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-short v2, p1, v0

    .line 913
    invoke-virtual {p0, v2}, Lcom/yelp/android/dc/c;->a(S)Lcom/yelp/android/dc/c;

    .line 912
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([Z)Lcom/yelp/android/dc/c;
    .locals 3

    .prologue
    .line 600
    if-nez p1, :cond_1

    .line 601
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 607
    :cond_0
    return-object p0

    .line 603
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-boolean v2, p1, v0

    .line 604
    invoke-virtual {p0, v2}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(I)Lcom/yelp/android/dc/c;
    .locals 2

    .prologue
    .line 930
    iget v0, p0, Lcom/yelp/android/dc/c;->c:I

    iget v1, p0, Lcom/yelp/android/dc/c;->b:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/dc/c;->c:I

    .line 931
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method
