.class public Lcom/yelp/android/ui/util/f;
.super Ljava/lang/Object;
.source "ApiSavedResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultType;"
        }
    .end annotation
.end field

.field private final b:Lcom/yelp/android/appdata/webrequests/YelpException;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/yelp/android/ui/util/f;->a:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lcom/yelp/android/ui/util/f;->b:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/util/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/g",
            "<TResultType;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/util/f;->b:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/util/f;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/yelp/android/ui/util/g;->a(Ljava/lang/Object;)V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/f;->b:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-interface {p1, v0}, Lcom/yelp/android/ui/util/g;->b(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method
