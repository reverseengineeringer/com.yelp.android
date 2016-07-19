.class Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;
.super Ljava/lang/Object;
.source "MediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Landroid/media/AudioManager;

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Z

.field private static d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 552
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->b:Landroid/content/SharedPreferences;

    .line 556
    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a:Landroid/media/AudioManager;

    .line 557
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a()Z

    move-result v0

    sput-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->c:Z

    .line 558
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a()Z

    move-result v0

    sput-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->d:Z

    .line 560
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$1;)V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;)V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;Z)V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 578
    sget-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->c:Z

    if-eq p1, v0, :cond_0

    .line 579
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->b(Z)V

    .line 580
    sput-boolean p1, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->c:Z

    .line 581
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "muted"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 583
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 563
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 570
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "muted"

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 571
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a(Z)V

    .line 572
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;)V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->b()V

    return-void
.end method

.method private b(Z)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 599
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/yelp/android/appdata/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/16 v0, -0x64

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 607
    :goto_1
    return-void

    .line 600
    :cond_0
    const/16 v0, 0x64

    goto :goto_0

    .line 605
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 591
    sget-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->d:Z

    sget-boolean v1, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->c:Z

    if-eq v0, v1, :cond_0

    .line 592
    sget-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->d:Z

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->b(Z)V

    .line 593
    sget-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->d:Z

    sput-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->c:Z

    .line 595
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;)Z
    .locals 1

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a()Z

    move-result v0

    return v0
.end method
