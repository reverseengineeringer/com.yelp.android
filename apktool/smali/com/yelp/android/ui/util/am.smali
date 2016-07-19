.class public Lcom/yelp/android/ui/util/am;
.super Ljava/lang/Object;
.source "ThemeMixer.java"


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yelp/android/ui/util/am;->a:Landroid/app/Activity;

    .line 34
    return-void
.end method

.method private b(ILandroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/util/am;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 79
    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {v0, p2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 82
    :cond_0
    if-eqz p1, :cond_1

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 85
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(ILandroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/util/am;->b(ILandroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 51
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f09014f

    .line 54
    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 59
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/yelp/android/util/Holiday;->getHolidayTheme(Ljava/util/Date;)I

    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 64
    :cond_1
    return-object v1

    .line 53
    :cond_2
    const v0, 0x7f090150

    goto :goto_0
.end method
