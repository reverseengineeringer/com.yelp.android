.class public Lcom/yelp/android/s/h;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(Landroid/app/ActivityManager;Lcom/yelp/android/s/j;)V
    .locals 6

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/yelp/android/s/h;->a(Landroid/app/ActivityManager;)I

    move-result v1

    .line 39
    invoke-interface {p2}, Lcom/yelp/android/s/j;->a()I

    move-result v0

    invoke-interface {p2}, Lcom/yelp/android/s/j;->b()I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    .line 42
    mul-int/lit8 v2, v0, 0x3

    .line 43
    mul-int/lit8 v0, v0, 0x2

    .line 45
    add-int v3, v0, v2

    if-gt v3, v1, :cond_1

    .line 46
    iput v0, p0, Lcom/yelp/android/s/h;->b:I

    .line 47
    iput v2, p0, Lcom/yelp/android/s/h;->a:I

    .line 54
    :goto_0
    const-string/jumbo v3, "MemorySizeCalculator"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const-string/jumbo v3, "MemorySizeCalculator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Calculated memory cache size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/yelp/android/s/h;->b:I

    invoke-static {v5}, Lcom/yelp/android/s/h;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pool size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/yelp/android/s/h;->a:I

    invoke-static {v5}, Lcom/yelp/android/s/h;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " memory class limited? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/2addr v0, v2

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " max size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/yelp/android/s/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " memoryClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isLowMemoryDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yelp/android/s/h;->b(Landroid/app/ActivityManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void

    .line 49
    :cond_1
    int-to-float v3, v1

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 50
    mul-int/lit8 v4, v3, 0x2

    iput v4, p0, Lcom/yelp/android/s/h;->b:I

    .line 51
    mul-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/yelp/android/s/h;->a:I

    goto/16 :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 32
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Lcom/yelp/android/s/i;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/s/i;-><init>(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/s/h;-><init>(Landroid/app/ActivityManager;Lcom/yelp/android/s/j;)V

    .line 34
    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 84
    const/high16 v0, 0x100000

    div-int v0, p0, v0

    return v0
.end method

.method private static a(Landroid/app/ActivityManager;)I
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 78
    invoke-static {p0}, Lcom/yelp/android/s/h;->b(Landroid/app/ActivityManager;)Z

    move-result v1

    .line 79
    int-to-float v2, v0

    if-eqz v1, :cond_0

    const v0, 0x3ea8f5c3    # 0.33f

    :goto_0
    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method private static b(Landroid/app/ActivityManager;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yelp/android/s/h;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/yelp/android/s/h;->a:I

    return v0
.end method
