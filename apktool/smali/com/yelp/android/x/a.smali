.class public Lcom/yelp/android/x/a;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/yelp/android/v/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/v/m",
        "<",
        "Lcom/yelp/android/v/e;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/v/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/v/j",
            "<",
            "Lcom/yelp/android/v/e;",
            "Lcom/yelp/android/v/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/x/a;-><init>(Lcom/yelp/android/v/j;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/v/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/v/j",
            "<",
            "Lcom/yelp/android/v/e;",
            "Lcom/yelp/android/v/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/yelp/android/x/a;->a:Lcom/yelp/android/v/j;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/v/e;II)Lcom/yelp/android/r/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/v/e;",
            "II)",
            "Lcom/yelp/android/r/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/yelp/android/x/a;->a:Lcom/yelp/android/v/j;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/yelp/android/x/a;->a:Lcom/yelp/android/v/j;

    invoke-virtual {v0, p1, v1, v1}, Lcom/yelp/android/v/j;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/v/e;

    .line 54
    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/yelp/android/x/a;->a:Lcom/yelp/android/v/j;

    invoke-virtual {v0, p1, v1, v1, p1}, Lcom/yelp/android/v/j;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 59
    :cond_0
    :goto_0
    new-instance v0, Lcom/yelp/android/r/f;

    invoke-direct {v0, p1}, Lcom/yelp/android/r/f;-><init>(Lcom/yelp/android/v/e;)V

    return-object v0

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/yelp/android/v/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/x/a;->a(Lcom/yelp/android/v/e;II)Lcom/yelp/android/r/c;

    move-result-object v0

    return-object v0
.end method
