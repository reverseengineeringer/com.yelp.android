.class public Lcom/yelp/android/r/k;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"

# interfaces
.implements Lcom/yelp/android/r/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/r/c",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/r/p;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/net/Uri;

.field private final d:Lcom/yelp/android/r/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/r/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I

.field private final f:I

.field private final g:Lcom/yelp/android/r/p;

.field private h:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/r/p;

    invoke-direct {v0}, Lcom/yelp/android/r/p;-><init>()V

    sput-object v0, Lcom/yelp/android/r/k;->a:Lcom/yelp/android/r/p;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/yelp/android/r/c;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/yelp/android/r/c",
            "<",
            "Ljava/io/InputStream;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v6, Lcom/yelp/android/r/k;->a:Lcom/yelp/android/r/p;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/r/k;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/yelp/android/r/c;IILcom/yelp/android/r/p;)V

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/yelp/android/r/c;IILcom/yelp/android/r/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/yelp/android/r/c",
            "<",
            "Ljava/io/InputStream;",
            ">;II",
            "Lcom/yelp/android/r/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/yelp/android/r/k;->b:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/yelp/android/r/k;->c:Landroid/net/Uri;

    .line 46
    iput-object p3, p0, Lcom/yelp/android/r/k;->d:Lcom/yelp/android/r/c;

    .line 47
    iput p4, p0, Lcom/yelp/android/r/k;->e:I

    .line 48
    iput p5, p0, Lcom/yelp/android/r/k;->f:I

    .line 49
    iput-object p6, p0, Lcom/yelp/android/r/k;->g:Lcom/yelp/android/r/p;

    .line 50
    return-void
.end method

.method static synthetic a(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/yelp/android/r/k;->c(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/yelp/android/r/k;->d(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 90
    if-eqz p0, :cond_0

    const-string/jumbo v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 96
    invoke-static {p0}, Lcom/yelp/android/r/k;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/yelp/android/r/k;->b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/r/k;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/r/k;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/r/k;->d:Lcom/yelp/android/r/c;

    invoke-interface {v0}, Lcom/yelp/android/r/c;->a()V

    .line 77
    return-void

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/r/k;->g:Lcom/yelp/android/r/p;

    iget-object v1, p0, Lcom/yelp/android/r/k;->c:Landroid/net/Uri;

    iget v2, p0, Lcom/yelp/android/r/k;->e:I

    iget v3, p0, Lcom/yelp/android/r/k;->f:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/r/p;->a(Landroid/net/Uri;II)Lcom/yelp/android/r/o;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/yelp/android/r/k;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/r/k;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/r/o;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/r/k;->h:Ljava/io/InputStream;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/r/k;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/yelp/android/r/k;->h:Ljava/io/InputStream;

    .line 63
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/r/k;->d:Lcom/yelp/android/r/c;

    invoke-interface {v0, p1}, Lcom/yelp/android/r/c;->a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/r/k;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
