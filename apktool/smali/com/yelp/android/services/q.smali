.class public abstract Lcom/yelp/android/services/q;
.super Ljava/lang/Object;
.source "SharingUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Landroid/net/Uri;
.end method

.method public abstract a()Lcom/yelp/android/analytics/h;
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/services/o;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 365
    invoke-virtual {p2}, Lcom/yelp/android/services/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string/jumbo v0, "android.intent.extra.TEXT"

    invoke-virtual {p0, p1}, Lcom/yelp/android/services/q;->c(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :goto_0
    return-void

    .line 370
    :cond_0
    const-string/jumbo v0, "\n"

    .line 371
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 372
    const-string/jumbo v2, "android.intent.extra.TEXT"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/yelp/android/services/q;->c(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public abstract b(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public final c(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/q;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 316
    const-string/jumbo v1, "yelp-android"

    const-string/jumbo v2, "ref"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "yelp-android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 319
    :cond_0
    return-object v0
.end method
