.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;
.super Ljava/lang/Object;
.source "ActivityMessageTheBusiness.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/messaging/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/l$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/messaging/l$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->disableLoading()V

    .line 342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 343
    const-string/jumbo v1, "confirmation_main"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07069f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string/jumbo v1, "confirmation_sub"

    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/messaging/l$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string/jumbo v1, "original_message_id"

    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/messaging/l$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->setResult(ILandroid/content/Intent;)V

    .line 352
    sget-object v1, Lcom/yelp/android/appdata/Features;->request_a_quote_multibiz:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->c(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aK()Lcom/yelp/android/serializable/MessageTheBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MessageTheBusiness;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;->REQUEST_A_QUOTE:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->c(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x40b

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->startActivityForResult(Landroid/content/Intent;I)V

    .line 372
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->c(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->startActivity(Landroid/content/Intent;)V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->finish()V

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a()V

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    const/4 v1, 0x1

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->disableLoading()V

    .line 330
    invoke-static {p2}, Lcom/yelp/android/appdata/webrequests/ApiException;->isUserBlocked(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;Z)Z

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->supportInvalidateOptionsMenu()V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 336
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 325
    check-cast p2, Lcom/yelp/android/appdata/webrequests/messaging/l$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/l$a;)V

    return-void
.end method
