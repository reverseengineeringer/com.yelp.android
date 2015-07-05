.class public Lcom/yelp/android/ui/activities/settings/ad;
.super Lcom/yelp/android/ui/activities/settings/a;
.source "OnPreviewMessageTextKeyChange.java"


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
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p3}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    return-void
.end method

.method a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b(Ljava/lang/Boolean;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 17
    return-void
.end method
