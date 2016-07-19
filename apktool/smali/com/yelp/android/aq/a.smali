.class public Lcom/yelp/android/aq/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/yelp/android/aq/a;->a:Z

    sput-boolean v0, Lcom/yelp/android/aq/a;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/yelp/android/aq/a;->a:Z

    if-eqz v2, :cond_0

    sget-boolean v0, Lcom/yelp/android/aq/a;->b:Z

    :goto_0
    return v0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string/jumbo v3, "com.android.vending"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "com.google.play"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sput-boolean v0, Lcom/yelp/android/aq/a;->a:Z

    sput-boolean v0, Lcom/yelp/android/aq/a;->b:Z

    goto :goto_0

    :catch_0
    move-exception v2

    sput-boolean v0, Lcom/yelp/android/aq/a;->a:Z

    sput-boolean v1, Lcom/yelp/android/aq/a;->b:Z

    move v0, v1

    goto :goto_0

    :cond_2
    sput-boolean v0, Lcom/yelp/android/aq/a;->a:Z

    sput-boolean v1, Lcom/yelp/android/aq/a;->b:Z

    move v0, v1

    goto :goto_0
.end method
