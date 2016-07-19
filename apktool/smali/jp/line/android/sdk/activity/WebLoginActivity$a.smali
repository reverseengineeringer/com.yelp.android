.class final Ljp/line/android/sdk/activity/WebLoginActivity$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/line/android/sdk/activity/WebLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljp/line/android/sdk/activity/WebLoginActivity;


# direct methods
.method constructor <init>(Ljp/line/android/sdk/activity/WebLoginActivity;)V
    .locals 0

    iput-object p1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    const/4 v2, 0x0

    const/4 v0, 0x1

    const-string/jumbo v1, "market://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v2}, Ljp/line/android/sdk/activity/WebLoginActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v2, v1}, Ljp/line/android/sdk/activity/WebLoginActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "lineconnect://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v4, "requestToken"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v4, "refreshToken"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v9

    const-wide/16 v4, -0x1

    :try_start_1
    const-string/jumbo v10, "expire"

    invoke-virtual {v3, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v4

    :goto_1
    if-eqz v8, :cond_2

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Illegal login result. Request Token is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    :goto_2
    if-eqz v3, :cond_7

    :try_start_3
    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-static {v3}, Ljp/line/android/sdk/activity/WebLoginActivity;->a(Lcom/yelp/android/db/i;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v1}, Ljp/line/android/sdk/activity/WebLoginActivity;->finish()V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static {v8, v4, v5, v9}, Lcom/yelp/android/db/i;->a(Ljava/lang/String;JLjava/lang/String;)Lcom/yelp/android/db/i;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string/jumbo v5, "fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "errorCode"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object v3, v2

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "error code is null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_2

    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Illegal login result."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    :try_start_5
    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v1, v2}, Ljp/line/android/sdk/activity/WebLoginActivity;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v1}, Ljp/line/android/sdk/activity/WebLoginActivity;->finish()V

    throw v0

    :cond_8
    const/16 v2, 0x1a1

    if-ne v1, v2, :cond_9

    :try_start_6
    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v1}, Ljp/line/android/sdk/activity/WebLoginActivity;->a()V

    goto :goto_3

    :cond_9
    iget-object v2, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    new-instance v3, Ljp/line/android/sdk/exception/LineSdkLoginException;

    sget-object v4, Ljp/line/android/sdk/exception/LineSdkLoginError;->FAILED_WEB_LOGIN:Ljp/line/android/sdk/exception/LineSdkLoginError;

    invoke-direct {v3, v4, v1}, Ljp/line/android/sdk/exception/LineSdkLoginException;-><init>(Ljp/line/android/sdk/exception/LineSdkLoginError;I)V

    invoke-virtual {v2, v3}, Ljp/line/android/sdk/activity/WebLoginActivity;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    if-eqz v2, :cond_a

    :try_start_7
    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-static {v6}, Ljp/line/android/sdk/activity/WebLoginActivity;->a(Lcom/yelp/android/db/i;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v1}, Ljp/line/android/sdk/activity/WebLoginActivity;->finish()V

    goto/16 :goto_0

    :cond_a
    :try_start_8
    iget-object v2, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v2, v1}, Ljp/line/android/sdk/activity/WebLoginActivity;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v1}, Ljp/line/android/sdk/activity/WebLoginActivity;->finish()V

    throw v0

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_b

    :try_start_9
    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-static {v6}, Ljp/line/android/sdk/activity/WebLoginActivity;->a(Lcom/yelp/android/db/i;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_5
    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v1}, Ljp/line/android/sdk/activity/WebLoginActivity;->finish()V

    throw v0

    :cond_b
    if-eqz v2, :cond_c

    :try_start_a
    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v1, v7}, Ljp/line/android/sdk/activity/WebLoginActivity;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    iget-object v1, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    invoke-virtual {v1}, Ljp/line/android/sdk/activity/WebLoginActivity;->finish()V

    throw v0

    :cond_c
    :try_start_b
    iget-object v2, p0, Ljp/line/android/sdk/activity/WebLoginActivity$a;->a:Ljp/line/android/sdk/activity/WebLoginActivity;

    new-instance v3, Ljp/line/android/sdk/exception/LineSdkLoginException;

    sget-object v4, Ljp/line/android/sdk/exception/LineSdkLoginError;->FAILED_WEB_LOGIN:Ljp/line/android/sdk/exception/LineSdkLoginError;

    invoke-direct {v3, v4, v1}, Ljp/line/android/sdk/exception/LineSdkLoginException;-><init>(Ljp/line/android/sdk/exception/LineSdkLoginError;I)V

    invoke-virtual {v2, v3}, Ljp/line/android/sdk/activity/WebLoginActivity;->a(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method
