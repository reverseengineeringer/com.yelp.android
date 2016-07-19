.class Lcom/yelp/android/bt/c$1;
.super Ljava/lang/Object;
.source "NetworkRepository.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/bt/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/a$a",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

.field final synthetic b:Lcom/yelp/android/bt/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/bt/c;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/bt/c$1;->b:Lcom/yelp/android/bt/c;

    iput-object p2, p0, Lcom/yelp/android/bt/c$1;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/bt/c$1;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    invoke-virtual {p1}, Lrx/e;->a()V

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {p1, v0}, Lrx/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lcom/yelp/android/bt/c$1;->a(Lrx/e;)V

    return-void
.end method
