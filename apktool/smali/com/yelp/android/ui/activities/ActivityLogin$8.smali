.class Lcom/yelp/android/ui/activities/ActivityLogin$8;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/co$a;


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
    .line 589
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3

    .prologue
    const v2, 0x7f07038a

    .line 592
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->d(Lcom/yelp/android/ui/activities/ActivityLogin;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->dismiss()V

    .line 594
    if-nez p1, :cond_2

    .line 595
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 598
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Lcom/yelp/android/ui/activities/ActivityLogin;Z)Z

    .line 600
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->e(Lcom/yelp/android/ui/activities/ActivityLogin;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->f(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->c(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    goto :goto_0

    .line 606
    :cond_2
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_5

    .line 607
    check-cast p1, Lcom/yelp/android/appdata/webrequests/ApiException;

    .line 608
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 610
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInInvalidCredentials:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 611
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {p1, v1}, Lcom/yelp/android/appdata/webrequests/ApiException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Lcom/yelp/android/ui/activities/ActivityLogin;Ljava/lang/String;)Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->showDialog(I)V

    .line 627
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->h(Lcom/yelp/android/ui/activities/ActivityLogin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->i(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    goto :goto_0

    .line 613
    :cond_3
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 615
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->g(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    goto :goto_1

    .line 617
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {p1, v2}, Lcom/yelp/android/appdata/webrequests/ApiException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 622
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin$8;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {p1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
