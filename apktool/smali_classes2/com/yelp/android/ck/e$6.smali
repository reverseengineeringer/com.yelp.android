.class Lcom/yelp/android/ck/e$6;
.super Ljava/lang/Object;
.source "OnLineSettingChange.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ck/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ck/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ck/e;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/yelp/android/ck/e$6;->a:Lcom/yelp/android/ck/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LineConnect:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ck/e$6;->a:Lcom/yelp/android/ck/e;

    invoke-static {v0}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;)Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ck/e$6$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ck/e$6$1;-><init>(Lcom/yelp/android/ck/e$6;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 200
    const v0, 0x7f070375

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 201
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 185
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ck/e$6;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
