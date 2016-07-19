.class Lcom/yelp/android/ck/e$5;
.super Ljava/lang/Object;
.source "OnLineSettingChange.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ck/e;->c()V
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
    .line 168
    iput-object p1, p0, Lcom/yelp/android/ck/e$5;->a:Lcom/yelp/android/ck/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ck/e$5;->a:Lcom/yelp/android/ck/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;Z)V

    .line 172
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 176
    const v0, 0x7f070376

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ck/e$5;->a:Lcom/yelp/android/ck/e;

    invoke-static {v0}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;)Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 179
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 168
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ck/e$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
