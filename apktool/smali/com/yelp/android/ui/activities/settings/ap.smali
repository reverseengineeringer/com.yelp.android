.class public Lcom/yelp/android/ui/activities/settings/ap;
.super Lcom/yelp/android/ui/activities/settings/a;
.source "ShareAwardsKeyChangeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->j()Ljava/lang/Boolean;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 18
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Ljava/lang/Boolean;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 12
    return-void
.end method
