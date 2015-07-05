.class Lcom/yelp/android/ui/activities/settings/f;
.super Ljava/lang/Object;
.source "ChangeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/f;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 944
    invoke-static {}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->e()[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    move-result-object v0

    aget-object v0, v0, p2

    .line 945
    new-instance v1, Lcom/yelp/android/appdata/RemoteConfigPreferences;

    invoke-direct {v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;-><init>()V

    .line 946
    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 947
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/f;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;)V

    .line 949
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 950
    return-void
.end method
