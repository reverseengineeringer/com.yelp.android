.class public abstract Lcom/yelp/android/ui/util/t;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/t$a;,
        Lcom/yelp/android/ui/util/t$b;,
        Lcom/yelp/android/ui/util/t$c;
    }
.end annotation


# static fields
.field private static b:Lcom/yelp/android/ui/util/t$a;


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/yelp/android/ui/util/t;->a:Landroid/content/Context;

    .line 90
    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;
    .locals 2

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/yelp/android/ui/util/t;->c()Lcom/yelp/android/ui/util/t$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/util/t$a;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Lcom/yelp/android/ui/util/t;
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/yelp/android/ui/util/t;->c()Lcom/yelp/android/ui/util/t$a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/util/t$a;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lcom/yelp/android/ui/util/t$a;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/yelp/android/ui/util/t;->b:Lcom/yelp/android/ui/util/t$a;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/yelp/android/ui/util/o$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/o$a;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/util/t;->b:Lcom/yelp/android/ui/util/t$a;

    .line 50
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/util/t;->b:Lcom/yelp/android/ui/util/t$a;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/net/Uri;)Lcom/yelp/android/ui/util/u$a;
.end method

.method public a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;
    .locals 2

    .prologue
    .line 101
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/t;->a(Landroid/net/Uri;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method protected abstract a(Lcom/yelp/android/ui/util/u;)V
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/util/t;->a:Landroid/content/Context;

    return-object v0
.end method
