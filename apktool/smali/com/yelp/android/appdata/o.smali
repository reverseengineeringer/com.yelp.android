.class public Lcom/yelp/android/appdata/o;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/yelp/android/appdata/o;->a:Landroid/content/Context;

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 426
    const-string/jumbo v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/o;->b:Z

    .line 427
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/yelp/android/appdata/o;->b:Z

    return v0
.end method
