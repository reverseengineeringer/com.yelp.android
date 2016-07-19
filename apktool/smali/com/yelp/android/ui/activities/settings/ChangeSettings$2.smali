.class Lcom/yelp/android/ui/activities/settings/ChangeSettings$2;
.super Ljava/lang/Object;
.source "ChangeSettings.java"

# interfaces
.implements Lcom/yelp/android/cj/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/settings/ChangeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$2;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$2;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$2;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$2;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$2;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    const v4, 0x7f070705

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/Context;Landroid/support/v4/app/l;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setEditText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->a()V

    .line 272
    return-void
.end method
