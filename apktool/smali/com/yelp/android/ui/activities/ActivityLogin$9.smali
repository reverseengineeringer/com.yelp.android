.class Lcom/yelp/android/ui/activities/ActivityLogin$9;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$9;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 675
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 676
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInPasswordReset:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 677
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ca;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$9;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->j(Lcom/yelp/android/ui/activities/ActivityLogin;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin$9;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->k(Lcom/yelp/android/ui/activities/ActivityLogin;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ca;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;)V

    .line 680
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 681
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$9;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 682
    return-void
.end method
