.class public Lcom/yelp/android/ac/a;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/yelp/android/aa/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ac/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/aa/l",
        "<",
        "Lcom/yelp/android/aa/d;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/aa/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/aa/k",
            "<",
            "Lcom/yelp/android/aa/d;",
            "Lcom/yelp/android/aa/d;",
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

    invoke-direct {p0, v0}, Lcom/yelp/android/ac/a;-><init>(Lcom/yelp/android/aa/k;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/aa/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/aa/k",
            "<",
            "Lcom/yelp/android/aa/d;",
            "Lcom/yelp/android/aa/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/yelp/android/ac/a;->a:Lcom/yelp/android/aa/k;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/aa/d;II)Lcom/yelp/android/w/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/aa/d;",
            "II)",
            "Lcom/yelp/android/w/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ac/a;->a:Lcom/yelp/android/aa/k;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ac/a;->a:Lcom/yelp/android/aa/k;

    invoke-virtual {v0, p1, v1, v1}, Lcom/yelp/android/aa/k;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/aa/d;

    .line 54
    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ac/a;->a:Lcom/yelp/android/aa/k;

    invoke-virtual {v0, p1, v1, v1, p1}, Lcom/yelp/android/aa/k;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 59
    :cond_0
    :goto_0
    new-instance v0, Lcom/yelp/android/w/g;

    invoke-direct {v0, p1}, Lcom/yelp/android/w/g;-><init>(Lcom/yelp/android/aa/d;)V

    return-object v0

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/yelp/android/w/c;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/yelp/android/aa/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ac/a;->a(Lcom/yelp/android/aa/d;II)Lcom/yelp/android/w/c;

    move-result-object v0

    return-object v0
.end method
