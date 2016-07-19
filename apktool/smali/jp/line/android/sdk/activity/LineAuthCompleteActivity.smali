.class public Ljp/line/android/sdk/activity/LineAuthCompleteActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ljp/line/android/sdk/activity/LineAuthCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/cz/a;->a(Landroid/net/Uri;)Lcom/yelp/android/cz/a$a;

    move-result-object v2

    invoke-static {}, Ljp/line/android/sdk/c;->a()Ljp/line/android/sdk/a;

    move-result-object v0

    invoke-interface {v0}, Ljp/line/android/sdk/a;->c()Ljp/line/android/sdk/login/a;

    move-result-object v0

    instance-of v1, v0, Lcom/yelp/android/cz/b;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/yelp/android/cz/b;

    invoke-virtual {v0}, Lcom/yelp/android/cz/b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {}, Ljp/line/android/sdk/activity/a;->a()Lcom/yelp/android/cz/d;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yelp/android/cz/d;->e()Lcom/yelp/android/db/f;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/yelp/android/db/f;->a:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v3, v3, Lcom/yelp/android/db/f;->a:Ljava/lang/String;

    iget-object v4, v2, Lcom/yelp/android/cz/a$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/cz/d;->d()Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    move-result-object v3

    sget-object v4, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED_A2A_LOGIN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/yelp/android/cz/a$a;->a:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljp/line/android/sdk/exception/LineSdkLoginException;

    sget-object v4, Ljp/line/android/sdk/exception/LineSdkLoginError;->FAILED_A2A_LOGIN:Ljp/line/android/sdk/exception/LineSdkLoginError;

    iget v2, v2, Lcom/yelp/android/cz/a$a;->a:I

    invoke-direct {v3, v4, v2}, Ljp/line/android/sdk/exception/LineSdkLoginException;-><init>(Ljp/line/android/sdk/exception/LineSdkLoginError;I)V

    invoke-virtual {v1, v3}, Lcom/yelp/android/cz/d;->a(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Ljp/line/android/sdk/c;->a()Ljp/line/android/sdk/a;

    move-result-object v0

    invoke-interface {v0}, Ljp/line/android/sdk/a;->h()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Ljp/line/android/sdk/activity/LineAuthCompleteActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Ljp/line/android/sdk/activity/LineAuthCompleteActivity;->finish()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    iget-object v2, v2, Lcom/yelp/android/cz/a$a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/yelp/android/db/i;->a(Ljava/lang/String;)Lcom/yelp/android/db/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/cz/d;->a(Lcom/yelp/android/db/i;)Z

    invoke-static {}, Lcom/yelp/android/cz/g;->a()Lcom/yelp/android/cz/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yelp/android/cz/g;->a(Lcom/yelp/android/cz/d;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v1}, Lcom/yelp/android/cz/d;->h()Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
