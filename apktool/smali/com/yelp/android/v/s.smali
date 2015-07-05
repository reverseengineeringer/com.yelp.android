.class public Lcom/yelp/android/v/s;
.super Ljava/lang/Object;
.source "UrlLoader.java"

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
        "Ljava/net/URL;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/v/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/v/m",
            "<",
            "Lcom/yelp/android/v/e;",
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
            "Lcom/yelp/android/v/e;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yelp/android/v/s;->a:Lcom/yelp/android/v/m;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/v/s;->a(Ljava/net/URL;II)Lcom/yelp/android/r/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/URL;II)Lcom/yelp/android/r/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "Lcom/yelp/android/r/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/v/s;->a:Lcom/yelp/android/v/m;

    new-instance v1, Lcom/yelp/android/v/e;

    invoke-direct {v1, p1}, Lcom/yelp/android/v/e;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/yelp/android/v/m;->a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;

    move-result-object v0

    return-object v0
.end method
