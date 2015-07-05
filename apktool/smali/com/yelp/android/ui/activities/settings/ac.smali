.class public Lcom/yelp/android/ui/activities/settings/ac;
.super Lcom/yelp/android/ui/activities/settings/a;
.source "OnPhotoNotifyChange.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/settings/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p3}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->f()Lcom/yelp/android/appdata/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/am;->a()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 14
    return-void
.end method

.method a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/yelp/android/appdata/am;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/am;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/am;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 20
    return-void
.end method
