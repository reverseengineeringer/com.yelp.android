.class public Lcom/yelp/android/h/m;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/h/m$d;,
        Lcom/yelp/android/h/m$b;,
        Lcom/yelp/android/h/m$a;,
        Lcom/yelp/android/h/m$e;,
        Lcom/yelp/android/h/m$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/h/m$c;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 507
    new-instance v0, Lcom/yelp/android/h/m$d;

    invoke-direct {v0}, Lcom/yelp/android/h/m$d;-><init>()V

    sput-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    .line 515
    :goto_0
    return-void

    .line 508
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 509
    new-instance v0, Lcom/yelp/android/h/m$b;

    invoke-direct {v0}, Lcom/yelp/android/h/m$b;-><init>()V

    sput-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    goto :goto_0

    .line 510
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 511
    new-instance v0, Lcom/yelp/android/h/m$a;

    invoke-direct {v0}, Lcom/yelp/android/h/m$a;-><init>()V

    sput-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    goto :goto_0

    .line 513
    :cond_2
    new-instance v0, Lcom/yelp/android/h/m$e;

    invoke-direct {v0}, Lcom/yelp/android/h/m$e;-><init>()V

    sput-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    .line 530
    return-void
.end method

.method public static a()Lcom/yelp/android/h/m;
    .locals 2

    .prologue
    .line 560
    new-instance v0, Lcom/yelp/android/h/m;

    sget-object v1, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    invoke-interface {v1}, Lcom/yelp/android/h/m$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/h/m;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 734
    sget-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    iget-object v1, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/m$c;->b(Ljava/lang/Object;I)V

    .line 735
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 714
    sget-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    iget-object v1, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/m$c;->a(Ljava/lang/Object;Z)V

    .line 715
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 780
    sget-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    iget-object v1, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/m$c;->a(Ljava/lang/Object;I)V

    .line 781
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 800
    sget-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    iget-object v1, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/m$c;->e(Ljava/lang/Object;I)V

    .line 801
    return-void
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 818
    sget-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    iget-object v1, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/m$c;->c(Ljava/lang/Object;I)V

    .line 819
    return-void
.end method

.method public e(I)V
    .locals 2

    .prologue
    .line 836
    sget-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    iget-object v1, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/m$c;->d(Ljava/lang/Object;I)V

    .line 837
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1025
    if-ne p0, p1, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return v0

    .line 1028
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1029
    goto :goto_0

    .line 1031
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1032
    goto :goto_0

    .line 1034
    :cond_3
    check-cast p1, Lcom/yelp/android/h/m;

    .line 1035
    iget-object v2, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 1036
    iget-object v2, p1, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1037
    goto :goto_0

    .line 1039
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1040
    goto :goto_0
.end method

.method public f(I)V
    .locals 2

    .prologue
    .line 853
    sget-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    iget-object v1, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/m$c;->f(Ljava/lang/Object;I)V

    .line 854
    return-void
.end method

.method public g(I)V
    .locals 2

    .prologue
    .line 871
    sget-object v0, Lcom/yelp/android/h/m;->a:Lcom/yelp/android/h/m$c;

    iget-object v1, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/m$c;->g(Ljava/lang/Object;I)V

    .line 872
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/h/m;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
