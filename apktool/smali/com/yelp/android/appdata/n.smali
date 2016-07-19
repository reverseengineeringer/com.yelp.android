.class public Lcom/yelp/android/appdata/n;
.super Ljava/lang/Object;
.source "ScreenDensity.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field private static o:F

.field private static p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/yelp/android/appdata/n;->o:F

    .line 6
    const/16 v0, 0x14

    sput v0, Lcom/yelp/android/appdata/n;->a:I

    .line 7
    const/16 v0, 0x10

    sput v0, Lcom/yelp/android/appdata/n;->b:I

    .line 8
    const/16 v0, 0xf

    sput v0, Lcom/yelp/android/appdata/n;->c:I

    .line 9
    const/16 v0, 0xb

    sput v0, Lcom/yelp/android/appdata/n;->d:I

    .line 10
    const/16 v0, 0xa

    sput v0, Lcom/yelp/android/appdata/n;->e:I

    .line 11
    const/16 v0, 0x9

    sput v0, Lcom/yelp/android/appdata/n;->f:I

    .line 12
    const/16 v0, 0x8

    sput v0, Lcom/yelp/android/appdata/n;->g:I

    .line 13
    const/4 v0, 0x7

    sput v0, Lcom/yelp/android/appdata/n;->h:I

    .line 14
    const/4 v0, 0x6

    sput v0, Lcom/yelp/android/appdata/n;->i:I

    .line 15
    const/4 v0, 0x5

    sput v0, Lcom/yelp/android/appdata/n;->j:I

    .line 16
    const/4 v0, 0x4

    sput v0, Lcom/yelp/android/appdata/n;->k:I

    .line 17
    const/4 v0, 0x3

    sput v0, Lcom/yelp/android/appdata/n;->l:I

    .line 18
    const/4 v0, 0x2

    sput v0, Lcom/yelp/android/appdata/n;->m:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/yelp/android/appdata/n;->n:I

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yelp/android/appdata/n;->p:Z

    return-void
.end method

.method public static a()F
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/yelp/android/appdata/n;->o:F

    return v0
.end method

.method public static a(I)I
    .locals 2

    .prologue
    .line 51
    sget-boolean v0, Lcom/yelp/android/appdata/n;->p:Z

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "init() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    int-to-float v0, p0

    sget v1, Lcom/yelp/android/appdata/n;->o:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(F)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    sput p0, Lcom/yelp/android/appdata/n;->o:F

    .line 27
    sput-boolean v1, Lcom/yelp/android/appdata/n;->p:Z

    .line 28
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->a:I

    .line 29
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->b:I

    .line 30
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->c:I

    .line 31
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->d:I

    .line 32
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->e:I

    .line 33
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->f:I

    .line 34
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->g:I

    .line 35
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->h:I

    .line 36
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->i:I

    .line 37
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->j:I

    .line 38
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->k:I

    .line 39
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->l:I

    .line 40
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->m:I

    .line 41
    invoke-static {v1}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/n;->n:I

    .line 42
    return-void
.end method
