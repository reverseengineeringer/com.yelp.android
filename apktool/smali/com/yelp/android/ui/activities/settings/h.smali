.class Lcom/yelp/android/ui/activities/settings/h;
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
    .line 237
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/h;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/h;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/h;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setEditText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->a()V

    .line 243
    return-void
.end method
