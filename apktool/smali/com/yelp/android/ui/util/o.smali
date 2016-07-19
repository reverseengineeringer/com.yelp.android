.class public Lcom/yelp/android/ui/util/o;
.super Lcom/yelp/android/ui/util/t;
.source "GlideImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/o$a;
    }
.end annotation


# instance fields
.field private b:Lcom/bumptech/glide/g;

.field private c:Lcom/bumptech/glide/i;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/t;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/o;->b:Lcom/bumptech/glide/g;

    .line 35
    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/o;->c:Lcom/bumptech/glide/i;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/util/o$1;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/o;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/util/u;Z)Lcom/bumptech/glide/a;
    .locals 5

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->a()Landroid/net/Uri;

    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/o;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/util/o;->c:Lcom/bumptech/glide/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/i;->h()Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/b;->a(Ljava/lang/Object;)Lcom/bumptech/glide/a;

    move-result-object v0

    .line 154
    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/util/o;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->f()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;F)Lcom/bumptech/glide/load/resource/bitmap/d;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/a;

    move-result-object v0

    :cond_0
    return-object v0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/util/o;->c:Lcom/bumptech/glide/i;

    new-instance v2, Lcom/yelp/android/ui/util/p;

    iget-object v3, p0, Lcom/yelp/android/ui/util/o;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/i;->a(Lcom/yelp/android/ac/e;)Lcom/bumptech/glide/i$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/i$c;->a(Ljava/lang/Object;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/b;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/ui/util/t$b;II)Lcom/yelp/android/am/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/t$b;",
            "II)",
            "Lcom/yelp/android/am/a",
            "<",
            "Lcom/yelp/android/ae/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcom/yelp/android/ui/util/o$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yelp/android/ui/util/o$1;-><init>(Lcom/yelp/android/ui/util/o;Lcom/yelp/android/ui/util/t$b;II)V

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Lcom/yelp/android/ui/util/t$c;)Lcom/yelp/android/am/b;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/yelp/android/ui/util/o$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/ui/util/o$2;-><init>(Lcom/yelp/android/ui/util/o;Landroid/widget/ImageView;Lcom/yelp/android/ui/util/t$c;)V

    return-object v0
.end method

.method private b(Lcom/yelp/android/ui/util/u;)Lcom/bumptech/glide/e;
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->g()Lcom/yelp/android/ui/util/t$c;

    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->h()Lcom/yelp/android/ui/util/t$b;

    move-result-object v2

    .line 116
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->f()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    .line 121
    :goto_0
    if-eqz v2, :cond_1

    .line 122
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/o;->c(Lcom/yelp/android/ui/util/u;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 131
    :goto_1
    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 127
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/o;->a(Lcom/yelp/android/ui/util/u;Z)Lcom/bumptech/glide/a;

    move-result-object v0

    goto :goto_1

    .line 131
    :cond_3
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/o;->c(Lcom/yelp/android/ui/util/u;)Lcom/bumptech/glide/c;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "^file|content$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/yelp/android/ui/util/u;)Lcom/bumptech/glide/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/u;",
            ")",
            "Lcom/bumptech/glide/c",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->a()Landroid/net/Uri;

    move-result-object v0

    .line 137
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/o;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/util/o;->c:Lcom/bumptech/glide/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/i;->h()Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/util/o;->c:Lcom/bumptech/glide/i;

    new-instance v2, Lcom/yelp/android/ui/util/p;

    iget-object v3, p0, Lcom/yelp/android/ui/util/o;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/i;->a(Lcom/yelp/android/ac/e;)Lcom/bumptech/glide/i$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/i$c;->a(Ljava/lang/Object;)Lcom/bumptech/glide/d;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/yelp/android/ui/util/u$a;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/yelp/android/ui/util/u$a;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/util/u$a;-><init>(Lcom/yelp/android/ui/util/t;Landroid/net/Uri;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/util/o;->b:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->i()V

    .line 46
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/util/o;->b:Lcom/bumptech/glide/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(I)V

    .line 51
    return-void
.end method

.method protected a(Lcom/yelp/android/ui/util/u;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 56
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/util/o;->c:Lcom/bumptech/glide/i;

    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->a(Landroid/net/Uri;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/bumptech/glide/d;->c(II)Lcom/bumptech/glide/request/a;

    .line 105
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/o;->b(Lcom/yelp/android/ui/util/u;)Lcom/bumptech/glide/e;

    move-result-object v1

    .line 67
    instance-of v0, v1, Lcom/bumptech/glide/c;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 68
    check-cast v0, Lcom/bumptech/glide/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->c()Lcom/bumptech/glide/c;

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->b()I

    move-result v0

    .line 72
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->c()I

    move-result v2

    .line 73
    if-gtz v0, :cond_2

    if-ne v0, v3, :cond_4

    :cond_2
    if-gtz v2, :cond_3

    if-ne v2, v3, :cond_4

    .line 76
    :cond_3
    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/e;->b(II)Lcom/bumptech/glide/e;

    .line 79
    :cond_4
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->d()I

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/e;->d(I)Lcom/bumptech/glide/e;

    .line 83
    :cond_5
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->e()I

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/e;->c(I)Lcom/bumptech/glide/e;

    .line 87
    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->i()Landroid/widget/ImageView;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->g()Lcom/yelp/android/ui/util/t$c;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->h()Lcom/yelp/android/ui/util/t$b;

    move-result-object v2

    if-nez v2, :cond_7

    .line 92
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/e;->a(Landroid/widget/ImageView;)Lcom/yelp/android/am/j;

    goto :goto_0

    .line 93
    :cond_7
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->h()Lcom/yelp/android/ui/util/t$b;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 95
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->h()Lcom/yelp/android/ui/util/t$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->c()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/yelp/android/ui/util/o;->a(Lcom/yelp/android/ui/util/t$b;II)Lcom/yelp/android/am/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/am/j;)Lcom/yelp/android/am/j;

    goto :goto_0

    .line 102
    :cond_8
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/u;->g()Lcom/yelp/android/ui/util/t$c;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/yelp/android/ui/util/o;->a(Landroid/widget/ImageView;Lcom/yelp/android/ui/util/t$c;)Lcom/yelp/android/am/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/am/j;)Lcom/yelp/android/am/j;

    goto :goto_0
.end method
