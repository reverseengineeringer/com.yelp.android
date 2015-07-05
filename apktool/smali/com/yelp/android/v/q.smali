.class public Lcom/yelp/android/v/q;
.super Ljava/lang/Object;
.source "StringLoader.java"

# interfaces
.implements Lcom/yelp/android/v/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/v/m",
        "<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/v/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/v/m",
            "<",
            "Landroid/net/Uri;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/v/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/v/m",
            "<",
            "Landroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/v/q;->a:Lcom/yelp/android/v/m;

    .line 20
    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/v/q;->a(Ljava/lang/String;II)Lcom/yelp/android/r/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Lcom/yelp/android/r/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/yelp/android/r/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-static {p1}, Lcom/yelp/android/v/q;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 35
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/v/q;->a:Lcom/yelp/android/v/m;

    invoke-interface {v1, v0, p2, p3}, Lcom/yelp/android/v/m;->a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;

    move-result-object v0

    return-object v0

    .line 28
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    invoke-static {p1}, Lcom/yelp/android/v/q;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
