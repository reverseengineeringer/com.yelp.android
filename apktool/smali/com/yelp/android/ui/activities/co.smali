.class Lcom/yelp/android/ui/activities/co;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/yelp/android/ui/activities/co;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 502
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/co;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->p()Lorg/apache/http/client/HttpClient;

    .line 504
    new-instance v0, Lcom/yelp/android/appdata/webrequests/el;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/co;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->e(Lcom/yelp/android/ui/activities/ActivityLogin;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/el;-><init>(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 505
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 506
    iget-object v1, p0, Lcom/yelp/android/ui/activities/co;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 507
    return-void
.end method
