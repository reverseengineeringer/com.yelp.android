.class Lcom/yelp/android/ui/activities/photoviewer/k;
.super Ljava/lang/Object;
.source "ActivityMediaViewer.java"


# static fields
.field private static a:Landroid/media/AudioManager;

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Z

.field private static d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/k;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/k;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 951
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 952
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/yelp/android/ui/activities/photoviewer/k;->b:Landroid/content/SharedPreferences;

    .line 953
    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/k;->a:Landroid/media/AudioManager;

    .line 954
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/k;->a()Z

    move-result v0

    sput-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/k;->c:Z

    .line 955
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/k;->a()Z

    move-result v0

    sput-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/k;->d:Z

    .line 957
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/a;)V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/k;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/k;)V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/k;->c()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/k;Z)V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/k;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 975
    sget-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/k;->c:Z

    if-eq p1, v0, :cond_0

    .line 976
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/k;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 977
    sput-boolean p1, Lcom/yelp/android/ui/activities/photoviewer/k;->c:Z

    .line 978
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "muted"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 980
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 960
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/k;->a:Landroid/media/AudioManager;

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
    .line 967
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/k;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "muted"

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/k;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 968
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/k;->a(Z)V

    .line 969
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/k;)V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/k;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 988
    sget-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/k;->d:Z

    sget-boolean v1, Lcom/yelp/android/ui/activities/photoviewer/k;->c:Z

    if-eq v0, v1, :cond_0

    .line 989
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/k;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    sget-boolean v2, Lcom/yelp/android/ui/activities/photoviewer/k;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 990
    sget-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/k;->d:Z

    sput-boolean v0, Lcom/yelp/android/ui/activities/photoviewer/k;->c:Z

    .line 992
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/photoviewer/k;)Z
    .locals 1

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/k;->a()Z

    move-result v0

    return v0
.end method
