.class public Landroid/support/v4/app/x;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/x$a;,
        Landroid/support/v4/app/x$f;,
        Landroid/support/v4/app/x$c;,
        Landroid/support/v4/app/x$b;,
        Landroid/support/v4/app/x$p;,
        Landroid/support/v4/app/x$d;,
        Landroid/support/v4/app/x$i;,
        Landroid/support/v4/app/x$h;,
        Landroid/support/v4/app/x$o;,
        Landroid/support/v4/app/x$n;,
        Landroid/support/v4/app/x$m;,
        Landroid/support/v4/app/x$l;,
        Landroid/support/v4/app/x$k;,
        Landroid/support/v4/app/x$j;,
        Landroid/support/v4/app/x$e;,
        Landroid/support/v4/app/x$g;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/app/x$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 831
    new-instance v0, Landroid/support/v4/app/x$i;

    invoke-direct {v0}, Landroid/support/v4/app/x$i;-><init>()V

    sput-object v0, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$g;

    .line 847
    :goto_0
    return-void

    .line 832
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 833
    new-instance v0, Landroid/support/v4/app/x$h;

    invoke-direct {v0}, Landroid/support/v4/app/x$h;-><init>()V

    sput-object v0, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$g;

    goto :goto_0

    .line 834
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 835
    new-instance v0, Landroid/support/v4/app/x$o;

    invoke-direct {v0}, Landroid/support/v4/app/x$o;-><init>()V

    sput-object v0, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$g;

    goto :goto_0

    .line 836
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 837
    new-instance v0, Landroid/support/v4/app/x$n;

    invoke-direct {v0}, Landroid/support/v4/app/x$n;-><init>()V

    sput-object v0, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$g;

    goto :goto_0

    .line 838
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 839
    new-instance v0, Landroid/support/v4/app/x$m;

    invoke-direct {v0}, Landroid/support/v4/app/x$m;-><init>()V

    sput-object v0, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$g;

    goto :goto_0

    .line 840
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 841
    new-instance v0, Landroid/support/v4/app/x$l;

    invoke-direct {v0}, Landroid/support/v4/app/x$l;-><init>()V

    sput-object v0, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$g;

    goto :goto_0

    .line 842
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 843
    new-instance v0, Landroid/support/v4/app/x$k;

    invoke-direct {v0}, Landroid/support/v4/app/x$k;-><init>()V

    sput-object v0, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$g;

    goto :goto_0

    .line 845
    :cond_6
    new-instance v0, Landroid/support/v4/app/x$j;

    invoke-direct {v0}, Landroid/support/v4/app/x$j;-><init>()V

    sput-object v0, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$g;

    goto :goto_0
.end method

.method static synthetic a()Landroid/support/v4/app/x$g;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$g;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/v;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Landroid/support/v4/app/x;->b(Landroid/support/v4/app/v;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/w;Landroid/support/v4/app/x$p;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Landroid/support/v4/app/x;->b(Landroid/support/v4/app/w;Landroid/support/v4/app/x$p;)V

    return-void
.end method

.method private static b(Landroid/support/v4/app/v;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/v;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/x$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x$a;

    .line 795
    invoke-interface {p0, v0}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/aa$a;)V

    goto :goto_0

    .line 797
    :cond_0
    return-void
.end method

.method private static b(Landroid/support/v4/app/w;Landroid/support/v4/app/x$p;)V
    .locals 7

    .prologue
    .line 801
    if-eqz p1, :cond_0

    .line 802
    instance-of v0, p1, Landroid/support/v4/app/x$c;

    if-eqz v0, :cond_1

    .line 803
    check-cast p1, Landroid/support/v4/app/x$c;

    .line 804
    iget-object v0, p1, Landroid/support/v4/app/x$c;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/x$c;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/x$c;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/x$c;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/w;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/x$f;

    if-eqz v0, :cond_2

    .line 810
    check-cast p1, Landroid/support/v4/app/x$f;

    .line 811
    iget-object v0, p1, Landroid/support/v4/app/x$f;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/x$f;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/x$f;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/x$f;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/w;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 816
    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/x$b;

    if-eqz v0, :cond_0

    .line 817
    check-cast p1, Landroid/support/v4/app/x$b;

    .line 818
    iget-object v1, p1, Landroid/support/v4/app/x$b;->e:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/x$b;->g:Z

    iget-object v3, p1, Landroid/support/v4/app/x$b;->f:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/x$b;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/x$b;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/x$b;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/w;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
