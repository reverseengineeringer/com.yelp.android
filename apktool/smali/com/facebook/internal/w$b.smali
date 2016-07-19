.class Lcom/facebook/internal/w$b;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/w;


# direct methods
.method private constructor <init>(Lcom/facebook/internal/w;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/w;Lcom/facebook/internal/w$1;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/facebook/internal/w$b;-><init>(Lcom/facebook/internal/w;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 506
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-static {v0}, Lcom/facebook/internal/w;->b(Lcom/facebook/internal/w;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-static {v0}, Lcom/facebook/internal/w;->c(Lcom/facebook/internal/w;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-static {v0}, Lcom/facebook/internal/w;->d(Lcom/facebook/internal/w;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 515
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-static {v0}, Lcom/facebook/internal/w;->e(Lcom/facebook/internal/w;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-static {v0}, Lcom/facebook/internal/w;->f(Lcom/facebook/internal/w;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/internal/w;->a(Lcom/facebook/internal/w;Z)Z

    .line 518
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 497
    const-string/jumbo v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 499
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-static {v0}, Lcom/facebook/internal/w;->b(Lcom/facebook/internal/w;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-static {v0}, Lcom/facebook/internal/w;->c(Lcom/facebook/internal/w;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 502
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 479
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/w;->a(Ljava/lang/Throwable;)V

    .line 481
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 488
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 490
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 491
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/w;->a(Ljava/lang/Throwable;)V

    .line 493
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 425
    const-string/jumbo v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Redirect URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-static {v0}, Lcom/facebook/internal/w;->a(Lcom/facebook/internal/w;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 427
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-virtual {v0, p2}, Lcom/facebook/internal/w;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 429
    const-string/jumbo v0, "error"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    if-nez v0, :cond_0

    .line 431
    const-string/jumbo v0, "error_type"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    :cond_0
    const-string/jumbo v1, "error_msg"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    if-nez v1, :cond_1

    .line 436
    const-string/jumbo v1, "error_message"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    :cond_1
    if-nez v1, :cond_2

    .line 439
    const-string/jumbo v1, "error_description"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    :cond_2
    const-string/jumbo v2, "error_code"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-static {v2}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 445
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 451
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne v2, v3, :cond_3

    .line 453
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-virtual {v0, v5}, Lcom/facebook/internal/w;->a(Landroid/os/Bundle;)V

    :goto_1
    move v0, v4

    .line 473
    :goto_2
    return v0

    .line 446
    :catch_0
    move-exception v2

    move v2, v3

    .line 447
    goto :goto_0

    .line 454
    :cond_3
    if-eqz v0, :cond_5

    const-string/jumbo v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "OAuthAccessDeniedException"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 456
    :cond_4
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-virtual {v0}, Lcom/facebook/internal/w;->cancel()V

    goto :goto_1

    .line 457
    :cond_5
    const/16 v3, 0x1069

    if-ne v2, v3, :cond_6

    .line 458
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-virtual {v0}, Lcom/facebook/internal/w;->cancel()V

    goto :goto_1

    .line 460
    :cond_6
    new-instance v3, Lcom/facebook/FacebookRequestError;

    invoke-direct {v3, v2, v0, v1}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    new-instance v2, Lcom/facebook/FacebookServiceException;

    invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/facebook/internal/w;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 464
    :cond_7
    const-string/jumbo v0, "fbconnect://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 465
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-virtual {v0}, Lcom/facebook/internal/w;->cancel()V

    move v0, v4

    .line 466
    goto :goto_2

    .line 467
    :cond_8
    const-string/jumbo v0, "touch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 468
    const/4 v0, 0x0

    goto :goto_2

    .line 471
    :cond_9
    iget-object v0, p0, Lcom/facebook/internal/w$b;->a:Lcom/facebook/internal/w;

    invoke-virtual {v0}, Lcom/facebook/internal/w;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 473
    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_0
.end method
