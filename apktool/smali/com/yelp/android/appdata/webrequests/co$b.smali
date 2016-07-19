.class Lcom/yelp/android/appdata/webrequests/co$b;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/serializable/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/co;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/yelp/android/appdata/webrequests/co;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/co$b;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    .line 827
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/co$b;->b:Ljava/lang/String;

    .line 828
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/appdata/webrequests/co;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/co$1;)V
    .locals 0

    .prologue
    .line 822
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/co$b;-><init>(Lcom/yelp/android/appdata/webrequests/co;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$b;->a:Lcom/yelp/android/appdata/webrequests/co;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/appdata/webrequests/co;Ljava/lang/String;Lcom/yelp/android/serializable/j;)V

    .line 847
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$b;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/j;)V

    .line 850
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$b;->a:Lcom/yelp/android/appdata/webrequests/co;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 851
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$b;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-static {v0, p2}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 833
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 822
    check-cast p2, Lcom/yelp/android/serializable/j;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/co$b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/j;)V

    return-void
.end method
