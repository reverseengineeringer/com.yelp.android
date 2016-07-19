.class Lcom/yelp/android/ui/activities/ActivityLogin$6;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$6;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 569
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/appdata/ApiPreferences;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;->REPORT_BACKGROUND_LOCATION:Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;

    iget-object v1, v1, Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;->apiKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/ApiPreferences;->a(Ljava/lang/String;Z)V

    .line 573
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BackgroundLocationAttachToAccountDialogYes:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 574
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$6;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->c(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    .line 575
    return-void
.end method
