.class public Landroid/support/design/widget/SwipeDismissBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SwipeDismissBehavior$b;,
        Landroid/support/design/widget/SwipeDismissBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/widget/ac;

.field private b:Landroid/support/design/widget/SwipeDismissBehavior$a;

.field private c:Z

.field private d:F

.field private e:Z

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private final j:Landroid/support/v4/widget/ac$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 83
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->d:F

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:I

    .line 87
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:F

    .line 88
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    .line 89
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->i:F

    .line 201
    new-instance v0, Landroid/support/design/widget/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/SwipeDismissBehavior$1;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/ac$a;

    .line 333
    return-void
.end method

.method static a(FFF)F
    .locals 2

    .prologue
    .line 376
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(III)I
    .locals 1

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior;->b(III)I

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/design/widget/SwipeDismissBehavior$a;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ac;

    if-nez v0, :cond_0

    .line 327
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->d:F

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/ac$a;

    invoke-static {p1, v0, v1}, Landroid/support/v4/widget/ac;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ac$a;)Landroid/support/v4/widget/ac;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ac;

    .line 331
    :cond_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/ac$a;

    invoke-static {p1, v0}, Landroid/support/v4/widget/ac;->a(Landroid/view/ViewGroup;Landroid/support/v4/widget/ac$a;)Landroid/support/v4/widget/ac;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(FFF)F
    .locals 1

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior;->c(FFF)F

    move-result v0

    return v0
.end method

.method private static b(III)I
    .locals 1

    .prologue
    .line 359
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ac;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ac;

    return-object v0
.end method

.method private static c(FFF)F
    .locals 1

    .prologue
    .line 355
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/support/design/widget/SwipeDismissBehavior;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:I

    return v0
.end method

.method static synthetic d(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:F

    return v0
.end method

.method static synthetic e(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    return v0
.end method

.method static synthetic f(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->i:F

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ac;

    invoke-virtual {v0}, Landroid/support/v4/widget/ac;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->c(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    .line 144
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:I

    .line 126
    return-void
.end method

.method public a(Landroid/support/design/widget/SwipeDismissBehavior$a;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/design/widget/SwipeDismissBehavior$a;

    .line 116
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ac;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ac;->b(Landroid/view/MotionEvent;)V

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->c(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->i:F

    .line 153
    return-void
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-static {p3}, Landroid/support/v4/view/t;->a(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    .line 184
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    if-eqz v0, :cond_2

    .line 189
    :goto_1
    return v1

    .line 173
    :pswitch_1
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    if-eqz v0, :cond_0

    .line 174
    iput-boolean v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    goto :goto_1

    :cond_1
    move v0, v1

    .line 179
    goto :goto_0

    .line 188
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/view/ViewGroup;)V

    .line 189
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ac;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
