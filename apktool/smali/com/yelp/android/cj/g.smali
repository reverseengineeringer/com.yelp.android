.class public Lcom/yelp/android/cj/g;
.super Ljava/lang/Object;
.source "LoginLogoutPreferenceViewInitializer.java"

# interfaces
.implements Lcom/yelp/android/cj/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    .line 15
    if-eqz v0, :cond_0

    const v0, 0x7f070385

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    return-void

    .line 15
    :cond_0
    const v0, 0x7f07038a

    goto :goto_0
.end method
