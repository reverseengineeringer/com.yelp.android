.class public abstract Lcom/yelp/android/appdata/webrequests/dn;
.super Ljava/lang/Object;
.source "RequestStoreBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest",
        "<**TResult;>;Result:",
        "Ljava/lang/Object;",
        "Callback::",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<TResult;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequest;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResult;"
        }
    .end annotation
.end field

.field protected c:Z

.field protected d:Lcom/yelp/android/appdata/webrequests/YelpException;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dn;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 19
    return-void
.end method
