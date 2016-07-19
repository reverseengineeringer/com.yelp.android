.class public Lcom/yelp/android/ui/util/u;
.super Ljava/lang/Object;
.source "ImageLoaderRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/u$1;,
        Lcom/yelp/android/ui/util/u$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/util/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/util/o",
            "<",
            "Lcom/yelp/android/ui/util/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/yelp/android/ui/util/t;

.field private c:Landroid/net/Uri;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/yelp/android/ui/util/t$c;

.field private j:Lcom/yelp/android/ui/util/t$b;

.field private k:Landroid/widget/ImageView;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/yelp/android/util/o;

    invoke-direct {v0}, Lcom/yelp/android/util/o;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/util/u;->a:Lcom/yelp/android/util/o;

    return-void
.end method

.method private constructor <init>(Lcom/yelp/android/ui/util/u$a;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/yelp/android/ui/util/u$a;->a(Lcom/yelp/android/ui/util/u$a;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/u;->b:Lcom/yelp/android/ui/util/t;

    .line 43
    invoke-static {p1}, Lcom/yelp/android/ui/util/u$a;->b(Lcom/yelp/android/ui/util/u$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/u;->c:Landroid/net/Uri;

    .line 44
    invoke-static {p1}, Lcom/yelp/android/ui/util/u$a;->c(Lcom/yelp/android/ui/util/u$a;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/u;->d:I

    .line 45
    invoke-static {p1}, Lcom/yelp/android/ui/util/u$a;->d(Lcom/yelp/android/ui/util/u$a;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/u;->e:I

    .line 46
    invoke-static {p1}, Lcom/yelp/android/ui/util/u$a;->e(Lcom/yelp/android/ui/util/u$a;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/u;->f:I

    .line 47
    invoke-static {p1}, Lcom/yelp/android/ui/util/u$a;->f(Lcom/yelp/android/ui/util/u$a;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/u;->g:I

    .line 48
    invoke-static {p1}, Lcom/yelp/android/ui/util/u$a;->g(Lcom/yelp/android/ui/util/u$a;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/u;->h:I

    .line 49
    invoke-static {p1}, Lcom/yelp/android/ui/util/u$a;->h(Lcom/yelp/android/ui/util/u$a;)Lcom/yelp/android/ui/util/t$c;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/u;->i:Lcom/yelp/android/ui/util/t$c;

    .line 50
    invoke-static {p1}, Lcom/yelp/android/ui/util/u$a;->i(Lcom/yelp/android/ui/util/u$a;)Lcom/yelp/android/ui/util/t$b;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/u;->j:Lcom/yelp/android/ui/util/t$b;

    .line 51
    invoke-static {p1}, Lcom/yelp/android/ui/util/u$a;->j(Lcom/yelp/android/ui/util/u$a;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/u;->k:Landroid/widget/ImageView;

    .line 52
    invoke-static {p1}, Lcom/yelp/android/ui/util/u$a;->k(Lcom/yelp/android/ui/util/u$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/u;->l:Z

    .line 54
    sget-object v0, Lcom/yelp/android/ui/util/u;->a:Lcom/yelp/android/util/o;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/o;->a(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/util/u$a;Lcom/yelp/android/ui/util/u$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/u;-><init>(Lcom/yelp/android/ui/util/u$a;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/u;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/util/u;->k()V

    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/util/u;->b:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/t;->a(Lcom/yelp/android/ui/util/u;)V

    .line 99
    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/util/u;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/yelp/android/ui/util/u;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yelp/android/ui/util/u;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/yelp/android/ui/util/u;->f:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/yelp/android/ui/util/u;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/yelp/android/ui/util/u;->h:I

    return v0
.end method

.method public g()Lcom/yelp/android/ui/util/t$c;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/util/u;->i:Lcom/yelp/android/ui/util/t$c;

    return-object v0
.end method

.method public h()Lcom/yelp/android/ui/util/t$b;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/util/u;->j:Lcom/yelp/android/ui/util/t$b;

    return-object v0
.end method

.method public i()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/util/u;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/u;->l:Z

    return v0
.end method
