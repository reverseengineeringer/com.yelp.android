.class Lcom/yelp/android/ui/activities/settings/i;
.super Lcom/yelp/android/ui/activities/settings/ak;
.source "ChangeSettings.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/i;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/settings/ak;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/settings/ak;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/i;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/i;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_0

    .line 256
    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    return-void
.end method
