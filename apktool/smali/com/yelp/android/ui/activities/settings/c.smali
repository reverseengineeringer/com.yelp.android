.class Lcom/yelp/android/ui/activities/settings/c;
.super Ljava/lang/Object;
.source "ChangeSettings.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/settings/ao;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/c;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 2

    .prologue
    .line 231
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    .line 232
    if-eqz v0, :cond_0

    const v0, 0x7f070349

    .line 233
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    return-void

    .line 232
    :cond_0
    const v0, 0x7f07034e

    goto :goto_0
.end method
