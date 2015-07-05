.class public Lcom/yelp/android/v/b;
.super Ljava/lang/Object;
.source "FileLoader.java"

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
        "Ljava/io/File;",
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
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/v/b;->a:Lcom/yelp/android/v/m;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;II)Lcom/yelp/android/r/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/yelp/android/r/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/v/b;->a:Lcom/yelp/android/v/m;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/yelp/android/v/m;->a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/v/b;->a(Ljava/io/File;II)Lcom/yelp/android/r/c;

    move-result-object v0

    return-object v0
.end method
