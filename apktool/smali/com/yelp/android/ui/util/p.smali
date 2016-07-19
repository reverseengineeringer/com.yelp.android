.class public Lcom/yelp/android/ui/util/p;
.super Ljava/lang/Object;
.source "GlideYelpUriLoader.java"

# interfaces
.implements Lcom/yelp/android/ac/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ac/e",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yelp/android/ui/util/p;->a:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;II)Lcom/yelp/android/w/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Lcom/yelp/android/w/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    :cond_2
    new-instance v0, Lcom/yelp/android/w/g;

    new-instance v2, Lcom/yelp/android/aa/d;

    invoke-direct {v2, v1}, Lcom/yelp/android/aa/d;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/yelp/android/w/g;-><init>(Lcom/yelp/android/aa/d;)V

    goto :goto_0

    .line 52
    :cond_3
    const-string/jumbo v2, "bundle://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string/jumbo v0, "bundle://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/yelp/android/ui/util/p;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 58
    if-nez v1, :cond_4

    .line 60
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.yelp.android.webimageview.intent.invalid_bundle_url"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v3, "image_url"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/util/p;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    :cond_4
    new-instance v0, Lcom/yelp/android/aa/n;

    iget-object v2, p0, Lcom/yelp/android/ui/util/p;->a:Landroid/content/Context;

    new-instance v3, Lcom/yelp/android/ac/h;

    iget-object v4, p0, Lcom/yelp/android/ui/util/p;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/yelp/android/ac/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/aa/n;-><init>(Landroid/content/Context;Lcom/yelp/android/aa/l;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/yelp/android/aa/n;->a(Ljava/lang/Integer;II)Lcom/yelp/android/w/c;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/yelp/android/w/c;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/p;->a(Landroid/net/Uri;II)Lcom/yelp/android/w/c;

    move-result-object v0

    return-object v0
.end method
