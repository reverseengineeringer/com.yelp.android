.class public Lcom/yelp/android/w/i;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"

# interfaces
.implements Lcom/yelp/android/w/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/w/i$e;,
        Lcom/yelp/android/w/i$f;,
        Lcom/yelp/android/w/i$b;,
        Lcom/yelp/android/w/i$d;,
        Lcom/yelp/android/w/i$c;,
        Lcom/yelp/android/w/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/w/c",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/w/i$e;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/net/Uri;

.field private final d:Lcom/yelp/android/w/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/w/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I

.field private final f:I

.field private final g:Lcom/yelp/android/w/i$e;

.field private h:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/w/i$e;

    invoke-direct {v0}, Lcom/yelp/android/w/i$e;-><init>()V

    sput-object v0, Lcom/yelp/android/w/i;->a:Lcom/yelp/android/w/i$e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/yelp/android/w/c;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/yelp/android/w/c",
            "<",
            "Ljava/io/InputStream;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v6, Lcom/yelp/android/w/i;->a:Lcom/yelp/android/w/i$e;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/w/i;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/yelp/android/w/c;IILcom/yelp/android/w/i$e;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/yelp/android/w/c;IILcom/yelp/android/w/i$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/yelp/android/w/c",
            "<",
            "Ljava/io/InputStream;",
            ">;II",
            "Lcom/yelp/android/w/i$e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/yelp/android/w/i;->b:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/yelp/android/w/i;->c:Landroid/net/Uri;

    .line 49
    iput-object p3, p0, Lcom/yelp/android/w/i;->d:Lcom/yelp/android/w/c;

    .line 50
    iput p4, p0, Lcom/yelp/android/w/i;->e:I

    .line 51
    iput p5, p0, Lcom/yelp/android/w/i;->f:I

    .line 52
    iput-object p6, p0, Lcom/yelp/android/w/i;->g:Lcom/yelp/android/w/i$e;

    .line 53
    return-void
.end method

.method private a(Lcom/yelp/android/w/i$d;)Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 71
    const/4 v1, 0x0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/w/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/w/i;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Lcom/yelp/android/w/i$d;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/yelp/android/w/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/w/i;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Lcom/yelp/android/w/i$d;->a(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    move v2, v0

    .line 85
    :goto_1
    if-eq v2, v3, :cond_1

    .line 86
    new-instance v0, Lcom/yelp/android/w/d;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/w/d;-><init>(Ljava/io/InputStream;I)V

    .line 88
    :goto_2
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string/jumbo v2, "MediaStoreThumbFetcher"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const-string/jumbo v2, "MediaStoreThumbFetcher"

    const-string/jumbo v4, "Failed to find thumbnail file"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method static synthetic a(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/yelp/android/w/i;->c(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/yelp/android/w/i;->d(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 114
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
    .line 120
    invoke-static {p0}, Lcom/yelp/android/w/i;->c(Landroid/net/Uri;)Z

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/w/i;->b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/w/i;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/w/i;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/w/i;->d:Lcom/yelp/android/w/c;

    invoke-interface {v0}, Lcom/yelp/android/w/c;->a()V

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/w/i;->g:Lcom/yelp/android/w/i$e;

    iget-object v1, p0, Lcom/yelp/android/w/i;->c:Landroid/net/Uri;

    iget v2, p0, Lcom/yelp/android/w/i;->e:I

    iget v3, p0, Lcom/yelp/android/w/i;->f:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/w/i$e;->a(Landroid/net/Uri;II)Lcom/yelp/android/w/i$d;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, v0}, Lcom/yelp/android/w/i;->a(Lcom/yelp/android/w/i$d;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/w/i;->h:Ljava/io/InputStream;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/w/i;->h:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/yelp/android/w/i;->d:Lcom/yelp/android/w/c;

    invoke-interface {v0, p1}, Lcom/yelp/android/w/c;->a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/yelp/android/w/i;->h:Ljava/io/InputStream;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/w/i;->h:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/w/i;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
