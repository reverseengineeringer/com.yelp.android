.class Lcom/yelp/android/services/p;
.super Ljava/lang/Object;
.source "SharingUtilities.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Lcom/yelp/android/services/p;->a:Landroid/content/pm/PackageManager;

    .line 394
    return-void
.end method


# virtual methods
.method a(Landroid/content/pm/ResolveInfo;)I
    .locals 3

    .prologue
    .line 411
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 412
    new-instance v1, Lcom/yelp/android/services/o;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, v2}, Lcom/yelp/android/services/o;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 413
    invoke-virtual {v1}, Lcom/yelp/android/services/o;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/services/o;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/services/o;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 424
    :goto_0
    return v0

    .line 421
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/services/o;->e()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/yelp/android/services/o;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    :cond_2
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 424
    :cond_3
    const/16 v0, -0x64

    goto :goto_0
.end method

.method public a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/p;->a(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    .line 400
    invoke-virtual {p0, p2}, Lcom/yelp/android/services/p;->a(Landroid/content/pm/ResolveInfo;)I

    move-result v1

    .line 401
    if-ne v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/yelp/android/services/p;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/yelp/android/services/p;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 406
    :goto_0
    return v0

    :cond_0
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 388
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/services/p;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 429
    instance-of v0, p1, Lcom/yelp/android/services/p;

    return v0
.end method
