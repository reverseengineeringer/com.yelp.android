.class Lcom/yelp/android/ck/e$3;
.super Ljava/lang/Object;
.source "OnLineSettingChange.java"

# interfaces
.implements Ljp/line/android/sdk/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ck/e;->a(Ljp/line/android/sdk/login/LineLoginFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljp/line/android/sdk/api/c",
        "<",
        "Lcom/yelp/android/db/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/ck/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ck/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yelp/android/ck/e$3;->b:Lcom/yelp/android/ck/e;

    iput-object p2, p0, Lcom/yelp/android/ck/e$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljp/line/android/sdk/api/b;)V
    .locals 4

    .prologue
    .line 102
    sget-object v0, Lcom/yelp/android/ck/e$7;->a:[I

    invoke-interface {p1}, Ljp/line/android/sdk/api/b;->b()Ljp/line/android/sdk/api/FutureStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljp/line/android/sdk/api/FutureStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 104
    :pswitch_0
    invoke-interface {p1}, Ljp/line/android/sdk/api/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/db/h;

    .line 105
    iget-object v0, v0, Lcom/yelp/android/db/h;->b:Ljava/lang/String;

    .line 106
    new-instance v1, Lcom/yelp/android/appdata/webrequests/cg;

    iget-object v2, p0, Lcom/yelp/android/ck/e$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ck/e$3;->b:Lcom/yelp/android/ck/e;

    invoke-static {v3}, Lcom/yelp/android/ck/e;->d(Lcom/yelp/android/ck/e;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/yelp/android/appdata/webrequests/cg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 111
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/cg;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
