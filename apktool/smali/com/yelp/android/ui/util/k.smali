.class public Lcom/yelp/android/ui/util/k;
.super Ljava/lang/Object;
.source "ClipboardUtils.java"


# direct methods
.method public static a(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/yelp/android/ui/util/k;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/yelp/android/ui/util/l;

    invoke-direct {v0, p1, p2}, Lcom/yelp/android/ui/util/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 31
    return-void
.end method

.method public static b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    :try_start_0
    const-string/jumbo v0, "clipboard"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 38
    invoke-virtual {v0, p2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const v0, 0x7f0701d9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 45
    const-string/jumbo v2, "Exception thrown in ClipboardManager.setText().This is a known issue with some versions of Jelly Bean (4.3)"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
