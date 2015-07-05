.class public Lcom/yelp/android/ui/activities/settings/w;
.super Ljava/lang/Object;
.source "OnAnnouncementsChange.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/settings/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/kahuna/sdk/h;->h()Z

    move-result v0

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 15
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/kahuna/sdk/h;->f()V

    .line 20
    :goto_0
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->KahunaEnabled:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-static {}, Lcom/kahuna/sdk/h;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x1

    return v0

    .line 18
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/h;->g()V

    goto :goto_0
.end method
