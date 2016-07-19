.class Lcom/yelp/android/appdata/webrequests/co$1;
.super Lcom/yelp/android/util/q;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/webrequests/co;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/q",
        "<",
        "Lorg/apache/http/client/CookieStore;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/co;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/co$1;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-direct {p0}, Lcom/yelp/android/util/q;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lorg/apache/http/client/CookieStore;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 210
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 211
    invoke-interface {v2}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    check-cast p1, [Lorg/apache/http/client/CookieStore;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/co$1;->a([Lorg/apache/http/client/CookieStore;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
