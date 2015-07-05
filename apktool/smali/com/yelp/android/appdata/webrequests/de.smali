.class Lcom/yelp/android/appdata/webrequests/de;
.super Lcom/yelp/android/util/aa;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/aa",
        "<",
        "Lorg/apache/http/client/CookieStore;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/dc;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/dc;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/de;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-direct {p0}, Lcom/yelp/android/util/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lorg/apache/http/client/CookieStore;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 241
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 242
    invoke-interface {v2}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    check-cast p1, [Lorg/apache/http/client/CookieStore;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/de;->a([Lorg/apache/http/client/CookieStore;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
