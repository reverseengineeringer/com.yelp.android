.class Lcom/yelp/android/ui/activities/settings/g;
.super Landroid/content/BroadcastReceiver;
.source "ChangeSettings.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/g;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/g;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a()V

    .line 958
    return-void
.end method
