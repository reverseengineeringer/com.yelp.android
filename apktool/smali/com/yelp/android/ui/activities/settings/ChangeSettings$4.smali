.class Lcom/yelp/android/ui/activities/settings/ChangeSettings$4;
.super Ljava/lang/Object;
.source "ChangeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/settings/ChangeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/LocaleSettings;

.field final synthetic b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Lcom/yelp/android/appdata/LocaleSettings;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$4;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$4;->a:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 416
    invoke-static {}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->values()[Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    move-result-object v0

    aget-object v0, v0, p2

    .line 418
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$4;->a:Lcom/yelp/android/appdata/LocaleSettings;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$4;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/appdata/LocaleSettings;->a(Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;Landroid/content/Context;)V

    .line 420
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DistanceUnitChanged:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "unit"

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 425
    return-void
.end method
