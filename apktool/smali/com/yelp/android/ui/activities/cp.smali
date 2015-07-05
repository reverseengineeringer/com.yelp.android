.class Lcom/yelp/android/ui/activities/cp;
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
    .line 510
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cp;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 515
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 516
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ci;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cp;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->e(Lcom/yelp/android/ui/activities/ActivityLogin;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/cp;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->f(Lcom/yelp/android/ui/activities/ActivityLogin;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ci;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;)V

    .line 518
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 519
    iget-object v1, p0, Lcom/yelp/android/ui/activities/cp;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 520
    return-void
.end method
