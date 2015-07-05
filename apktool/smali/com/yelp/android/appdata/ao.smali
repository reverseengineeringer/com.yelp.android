.class public Lcom/yelp/android/appdata/ao;
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

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field private static v:F

.field private static w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0x41

    const/16 v1, 0x28

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/yelp/android/appdata/ao;->v:F

    .line 8
    const/16 v0, 0x14

    sput v0, Lcom/yelp/android/appdata/ao;->a:I

    .line 9
    const/16 v0, 0x10

    sput v0, Lcom/yelp/android/appdata/ao;->b:I

    .line 10
    const/16 v0, 0xf

    sput v0, Lcom/yelp/android/appdata/ao;->c:I

    .line 11
    const/16 v0, 0xb

    sput v0, Lcom/yelp/android/appdata/ao;->d:I

    .line 12
    const/16 v0, 0xa

    sput v0, Lcom/yelp/android/appdata/ao;->e:I

    .line 13
    const/16 v0, 0x9

    sput v0, Lcom/yelp/android/appdata/ao;->f:I

    .line 14
    const/16 v0, 0x8

    sput v0, Lcom/yelp/android/appdata/ao;->g:I

    .line 15
    const/4 v0, 0x7

    sput v0, Lcom/yelp/android/appdata/ao;->h:I

    .line 16
    const/4 v0, 0x6

    sput v0, Lcom/yelp/android/appdata/ao;->i:I

    .line 17
    const/4 v0, 0x5

    sput v0, Lcom/yelp/android/appdata/ao;->j:I

    .line 18
    const/4 v0, 0x4

    sput v0, Lcom/yelp/android/appdata/ao;->k:I

    .line 19
    const/4 v0, 0x3

    sput v0, Lcom/yelp/android/appdata/ao;->l:I

    .line 20
    const/4 v0, 0x2

    sput v0, Lcom/yelp/android/appdata/ao;->m:I

    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/yelp/android/appdata/ao;->n:I

    .line 23
    sput v3, Lcom/yelp/android/appdata/ao;->o:I

    .line 24
    sput v3, Lcom/yelp/android/appdata/ao;->p:I

    .line 25
    sput v1, Lcom/yelp/android/appdata/ao;->q:I

    .line 26
    sput v1, Lcom/yelp/android/appdata/ao;->r:I

    .line 27
    sput v2, Lcom/yelp/android/appdata/ao;->s:I

    .line 28
    sput v2, Lcom/yelp/android/appdata/ao;->t:I

    .line 29
    sget v0, Lcom/yelp/android/appdata/ao;->o:I

    sget v1, Lcom/yelp/android/appdata/ao;->g:I

    add-int/2addr v0, v1

    sput v0, Lcom/yelp/android/appdata/ao;->u:I

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yelp/android/appdata/ao;->w:Z

    return-void
.end method

.method public static a()F
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/yelp/android/appdata/ao;->v:F

    return v0
.end method

.method public static a(I)I
    .locals 2

    .prologue
    .line 64
    sget-boolean v0, Lcom/yelp/android/appdata/ao;->w:Z

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "init() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    int-to-float v0, p0

    sget v1, Lcom/yelp/android/appdata/ao;->v:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 90
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(F)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/16 v3, 0x41

    const/16 v2, 0x28

    const/4 v1, 0x1

    .line 37
    sput p0, Lcom/yelp/android/appdata/ao;->v:F

    .line 38
    sput-boolean v1, Lcom/yelp/android/appdata/ao;->w:Z

    .line 39
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->a:I

    .line 40
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->b:I

    .line 41
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->c:I

    .line 42
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->d:I

    .line 43
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->e:I

    .line 44
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->f:I

    .line 45
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->g:I

    .line 46
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->h:I

    .line 47
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->i:I

    .line 48
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->j:I

    .line 49
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->k:I

    .line 50
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->l:I

    .line 51
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->m:I

    .line 52
    invoke-static {v1}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->n:I

    .line 54
    invoke-static {v4}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->o:I

    .line 55
    invoke-static {v4}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->p:I

    .line 56
    invoke-static {v2}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->q:I

    .line 57
    invoke-static {v2}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->r:I

    .line 58
    invoke-static {v3}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->s:I

    .line 59
    invoke-static {v3}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->t:I

    .line 60
    const/16 v0, 0x6c

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/appdata/ao;->u:I

    .line 61
    return-void
.end method

.method public static b(F)F
    .locals 2

    .prologue
    .line 71
    sget-boolean v0, Lcom/yelp/android/appdata/ao;->w:Z

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "init() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    sget v0, Lcom/yelp/android/appdata/ao;->v:F

    mul-float/2addr v0, p0

    return v0
.end method
