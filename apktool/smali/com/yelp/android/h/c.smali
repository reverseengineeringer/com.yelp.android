.class public Lcom/yelp/android/h/c;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/h/c$c;,
        Lcom/yelp/android/h/c$b;,
        Lcom/yelp/android/h/c$i;,
        Lcom/yelp/android/h/c$h;,
        Lcom/yelp/android/h/c$g;,
        Lcom/yelp/android/h/c$f;,
        Lcom/yelp/android/h/c$d;,
        Lcom/yelp/android/h/c$j;,
        Lcom/yelp/android/h/c$e;,
        Lcom/yelp/android/h/c$l;,
        Lcom/yelp/android/h/c$k;,
        Lcom/yelp/android/h/c$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/h/c$e;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1877
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 1878
    new-instance v0, Lcom/yelp/android/h/c$c;

    invoke-direct {v0}, Lcom/yelp/android/h/c$c;-><init>()V

    sput-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    .line 1894
    :goto_0
    return-void

    .line 1879
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1880
    new-instance v0, Lcom/yelp/android/h/c$b;

    invoke-direct {v0}, Lcom/yelp/android/h/c$b;-><init>()V

    sput-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    goto :goto_0

    .line 1881
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 1882
    new-instance v0, Lcom/yelp/android/h/c$i;

    invoke-direct {v0}, Lcom/yelp/android/h/c$i;-><init>()V

    sput-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    goto :goto_0

    .line 1883
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 1884
    new-instance v0, Lcom/yelp/android/h/c$h;

    invoke-direct {v0}, Lcom/yelp/android/h/c$h;-><init>()V

    sput-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    goto :goto_0

    .line 1885
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 1886
    new-instance v0, Lcom/yelp/android/h/c$g;

    invoke-direct {v0}, Lcom/yelp/android/h/c$g;-><init>()V

    sput-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    goto :goto_0

    .line 1887
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 1888
    new-instance v0, Lcom/yelp/android/h/c$f;

    invoke-direct {v0}, Lcom/yelp/android/h/c$f;-><init>()V

    sput-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    goto :goto_0

    .line 1889
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_6

    .line 1890
    new-instance v0, Lcom/yelp/android/h/c$d;

    invoke-direct {v0}, Lcom/yelp/android/h/c$d;-><init>()V

    sput-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    goto :goto_0

    .line 1892
    :cond_6
    new-instance v0, Lcom/yelp/android/h/c$j;

    invoke-direct {v0}, Lcom/yelp/android/h/c$j;-><init>()V

    sput-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2251
    iput-object p1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    .line 2252
    return-void
.end method

.method public static a(Lcom/yelp/android/h/c;)Lcom/yelp/android/h/c;
    .locals 2

    .prologue
    .line 2304
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/h/c;->a(Ljava/lang/Object;)Lcom/yelp/android/h/c;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;)Lcom/yelp/android/h/c;
    .locals 1

    .prologue
    .line 2238
    if-eqz p0, :cond_0

    .line 2239
    new-instance v0, Lcom/yelp/android/h/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/h/c;-><init>(Ljava/lang/Object;)V

    .line 2241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3843
    sparse-switch p0, :sswitch_data_0

    .line 3881
    const-string/jumbo v0, "ACTION_UNKNOWN"

    :goto_0
    return-object v0

    .line 3845
    :sswitch_0
    const-string/jumbo v0, "ACTION_FOCUS"

    goto :goto_0

    .line 3847
    :sswitch_1
    const-string/jumbo v0, "ACTION_CLEAR_FOCUS"

    goto :goto_0

    .line 3849
    :sswitch_2
    const-string/jumbo v0, "ACTION_SELECT"

    goto :goto_0

    .line 3851
    :sswitch_3
    const-string/jumbo v0, "ACTION_CLEAR_SELECTION"

    goto :goto_0

    .line 3853
    :sswitch_4
    const-string/jumbo v0, "ACTION_CLICK"

    goto :goto_0

    .line 3855
    :sswitch_5
    const-string/jumbo v0, "ACTION_LONG_CLICK"

    goto :goto_0

    .line 3857
    :sswitch_6
    const-string/jumbo v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_0

    .line 3859
    :sswitch_7
    const-string/jumbo v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_0

    .line 3861
    :sswitch_8
    const-string/jumbo v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    .line 3863
    :sswitch_9
    const-string/jumbo v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    .line 3865
    :sswitch_a
    const-string/jumbo v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_0

    .line 3867
    :sswitch_b
    const-string/jumbo v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_0

    .line 3869
    :sswitch_c
    const-string/jumbo v0, "ACTION_SCROLL_FORWARD"

    goto :goto_0

    .line 3871
    :sswitch_d
    const-string/jumbo v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_0

    .line 3873
    :sswitch_e
    const-string/jumbo v0, "ACTION_CUT"

    goto :goto_0

    .line 3875
    :sswitch_f
    const-string/jumbo v0, "ACTION_COPY"

    goto :goto_0

    .line 3877
    :sswitch_10
    const-string/jumbo v0, "ACTION_PASTE"

    goto :goto_0

    .line 3879
    :sswitch_11
    const-string/jumbo v0, "ACTION_SET_SELECTION"

    goto :goto_0

    .line 3843
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method

.method static synthetic v()Lcom/yelp/android/h/c$e;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 2497
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->a(Ljava/lang/Object;I)V

    .line 2498
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 2673
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2674
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2313
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->c(Ljava/lang/Object;Landroid/view/View;)V

    .line 2314
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3026
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->d(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3027
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 2784
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->c(Ljava/lang/Object;Z)V

    .line 2785
    return-void
.end method

.method public a(Lcom/yelp/android/h/c$a;)Z
    .locals 3

    .prologue
    .line 2530
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/yelp/android/h/c$a;->a(Lcom/yelp/android/h/c$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/h/c$e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 2482
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 2579
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->b(Ljava/lang/Object;I)V

    .line 2580
    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 2688
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2689
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2419
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 2420
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3050
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3051
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3194
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    check-cast p1, Lcom/yelp/android/h/c$k;

    iget-object v2, p1, Lcom/yelp/android/h/c$k;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/h/c$e;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3195
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 2808
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->d(Ljava/lang/Object;Z)V

    .line 2809
    return-void
.end method

.method public c()I
    .locals 2

    .prologue
    .line 2588
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->r(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 2697
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2698
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2641
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 2642
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3074
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->e(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3075
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3198
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    check-cast p1, Lcom/yelp/android/h/c$l;

    invoke-static {p1}, Lcom/yelp/android/h/c$l;->a(Lcom/yelp/android/h/c$l;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/h/c$e;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3199
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 2833
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->h(Ljava/lang/Object;Z)V

    .line 2834
    return-void
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 2712
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2713
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3315
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->d(Ljava/lang/Object;Landroid/view/View;)V

    .line 3316
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3098
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3099
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 2858
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->i(Ljava/lang/Object;Z)V

    .line 2859
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 2721
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->g(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3296
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3297
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 2882
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->g(Ljava/lang/Object;Z)V

    .line 2883
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 2745
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->h(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3778
    if-ne p0, p1, :cond_1

    .line 3795
    :cond_0
    :goto_0
    return v0

    .line 3781
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 3782
    goto :goto_0

    .line 3784
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 3785
    goto :goto_0

    .line 3787
    :cond_3
    check-cast p1, Lcom/yelp/android/h/c;

    .line 3788
    iget-object v2, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 3789
    iget-object v2, p1, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 3790
    goto :goto_0

    .line 3792
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 3793
    goto :goto_0
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 2906
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->a(Ljava/lang/Object;Z)V

    .line 2907
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 2769
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->k(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g(Z)V
    .locals 2

    .prologue
    .line 2930
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->e(Ljava/lang/Object;Z)V

    .line 2931
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 2793
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->l(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h(Z)V
    .locals 2

    .prologue
    .line 2954
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->b(Ljava/lang/Object;Z)V

    .line 2955
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 2817
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->s(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 3773
    iget-object v0, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i(Z)V
    .locals 2

    .prologue
    .line 3002
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->f(Ljava/lang/Object;Z)V

    .line 3003
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 2842
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->t(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j(Z)V
    .locals 2

    .prologue
    .line 3270
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/h/c$e;->j(Ljava/lang/Object;Z)V

    .line 3271
    return-void
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 2867
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->p(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 2891
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->i(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 2915
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->m(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 2939
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->j(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 2963
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->n(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 2987
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->o(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3011
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3035
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3059
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3083
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public t()V
    .locals 2

    .prologue
    .line 3109
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->q(Ljava/lang/Object;)V

    .line 3110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3801
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3803
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3805
    invoke-virtual {p0, v0}, Lcom/yelp/android/h/c;->a(Landroid/graphics/Rect;)V

    .line 3806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3808
    invoke-virtual {p0, v0}, Lcom/yelp/android/h/c;->c(Landroid/graphics/Rect;)V

    .line 3809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3811
    const-string/jumbo v0, "; packageName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->p()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3812
    const-string/jumbo v0, "; className: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->q()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3813
    const-string/jumbo v0, "; text: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->r()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3814
    const-string/jumbo v0, "; contentDescription: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->s()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3815
    const-string/jumbo v0, "; viewId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3817
    const-string/jumbo v0, "; checkable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3818
    const-string/jumbo v0, "; checked: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3819
    const-string/jumbo v0, "; focusable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3820
    const-string/jumbo v0, "; focused: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->g()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3821
    const-string/jumbo v0, "; selected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->j()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3822
    const-string/jumbo v0, "; clickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3823
    const-string/jumbo v0, "; longClickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->l()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3824
    const-string/jumbo v0, "; enabled: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3825
    const-string/jumbo v0, "; password: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->n()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "; scrollable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/h/c;->o()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3828
    const-string/jumbo v0, "; ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3829
    invoke-virtual {p0}, Lcom/yelp/android/h/c;->b()I

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3830
    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    .line 3831
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    .line 3832
    invoke-static {v2}, Lcom/yelp/android/h/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3833
    if-eqz v0, :cond_0

    .line 3834
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3837
    :cond_1
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3839
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3140
    sget-object v0, Lcom/yelp/android/h/c;->a:Lcom/yelp/android/h/c$e;

    iget-object v1, p0, Lcom/yelp/android/h/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/h/c$e;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
