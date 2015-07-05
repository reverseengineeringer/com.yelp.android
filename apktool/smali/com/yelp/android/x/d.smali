.class public Lcom/yelp/android/x/d;
.super Ljava/lang/Object;
.source "StreamByteArrayLoader.java"

# interfaces
.implements Lcom/yelp/android/x/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/x/h",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/yelp/android/x/d;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yelp/android/x/d;->a:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/x/d;->a([BII)Lcom/yelp/android/r/c;

    move-result-object v0

    return-object v0
.end method

.method public a([BII)Lcom/yelp/android/r/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/yelp/android/r/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/r/b;

    iget-object v1, p0, Lcom/yelp/android/x/d;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/r/b;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
