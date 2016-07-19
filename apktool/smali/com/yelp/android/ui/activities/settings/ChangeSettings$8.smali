.class Lcom/yelp/android/ui/activities/settings/ChangeSettings$8;
.super Ljava/lang/Object;
.source "ChangeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/settings/ChangeSettings;->f()V
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
    .line 773
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$8;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 776
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$8;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$8;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Landroid/content/Context;)V

    .line 778
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$8;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()V

    .line 779
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$8;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Z)Z

    .line 781
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$8;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    const v1, 0x7f0f038a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 782
    new-instance v1, Lcom/yelp/android/cm/c;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$8;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/cm/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UserLogoutCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0
.end method
